/*******************************************************************************
 * BSD 3-Clause License
 *
 * Copyright (c) 2021, Qiayuan Liao
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 * * Redistributions of source code must retain the above copyright notice, this
 *   list of conditions and the following disclaimer.
 *
 * * Redistributions in binary form must reproduce the above copyright notice,
 *   this list of conditions and the following disclaimer in the documentation
 *   and/or other materials provided with the distribution.
 *
 * * Neither the name of the copyright holder nor the names of its
 *   contributors may be used to endorse or promote products derived from
 *   this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE
 * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
 * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
 * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 *******************************************************************************/

//
// Created by chenzheng on 3/20/21.
//

#pragma once

#include <iostream>
#include <Eigen/Dense>
#include "eigen_types.h"

template <typename T>
class Lqr
{
public:
  template <typename TA, typename TB, typename TQ, typename TR, typename TK>
  Lqr(const Eigen::MatrixBase<TA>& A, const Eigen::MatrixBase<TB>& B, const Eigen::MatrixBase<TQ>& Q,
      const Eigen::MatrixBase<TR>& R, const Eigen::MatrixBase<TK>& K)
    : a_(A), b_(B), q_(Q), r_(R), k_(K) 
  {
    // check A
    // static_assert(TA::RowsAtCompileTime == TA::ColsAtCompileTime, "lqr: A should be square matrix");
    // // check B
    // static_assert(TB::RowsAtCompileTime == TA::RowsAtCompileTime, "lqr: B rows should be equal to A rows");
    // // check Q
    // static_assert(TQ::RowsAtCompileTime == TA::RowsAtCompileTime && TQ::ColsAtCompileTime == TA::ColsAtCompileTime,
    //               "lqr: The rows and columns of Q should be equal to A");
    // // check R
    // static_assert(TR::RowsAtCompileTime == TB::ColsAtCompileTime && TR::ColsAtCompileTime == TB::ColsAtCompileTime,
    //               "lqr: The rows and columns of R should be equal to the cols of B");
    // // check K
    // static_assert(TK::RowsAtCompileTime == TB::ColsAtCompileTime && TK::ColsAtCompileTime == TA::RowsAtCompileTime,
    //               "lqr: The rows of K should be equal to the cols of B, and the cols of K should be equal to the rows of A");
    // k_.resize(TB::ColsAtCompileTime, TB::RowsAtCompileTime);
    // k_.setZero();
  }

  Eigen::MatrixXd solveRiccatiIterative(const Eigen::MatrixXd& A, const Eigen::MatrixXd& B, const Eigen::MatrixXd& Q, const Eigen::MatrixXd& R, int max_iter = 100, double tol = 1e-6) {
    Eigen::MatrixXd P = Q;  // 初始 P = Q
    Eigen::MatrixXd P_prev;

    for (int iter = 0; iter < max_iter; ++iter) {
      P_prev = P;
      Eigen::MatrixXd BRB = B.transpose() * P * B + R;
      Eigen::MatrixXd BRB_inv = BRB.inverse();
      P = A.transpose() * P * A - A.transpose() * P * B * BRB_inv * B.transpose() * P * A + Q;

      // 检查收敛
      if ((P - P_prev).norm() < tol) {
        ROS_INFO("Riccati converged in %d iterations", iter + 1);
        break;
      }
    }
    return P;
  }

bool computeK(const Eigen::MatrixXd& A, const Eigen::MatrixXd& B, const Eigen::MatrixXd& Q, const Eigen::MatrixXd& R, Eigen::MatrixXd& K) {
  try {
    // 检查矩阵有效性
    if (!A.allFinite() || !B.allFinite() || !Q.allFinite() || !R.allFinite()) {
      ROS_ERROR("LQR matrices contain NaN or Inf");
      return false;
    }

    // 计算 P
    Eigen::MatrixXd P = solveRiccatiIterative(A, B, Q, R);
    if (P.rows() == 0 || P.cols() == 0) {
      ROS_ERROR("Riccati computation failed");
      return false;
    }

    // 正确的 LQR 增益公式：K = R^{-1} B^T P
    K = R.inverse() * B.transpose() * P;
    ROS_INFO("LQR K matrix computed successfully: %ldx%ld", K.rows(), K.cols());
    return true;
  } catch (const std::exception& e) {
    ROS_ERROR("Exception in computeLQR: %s", e.what());
    return false;
  }
}

  Eigen::Matrix<T, Eigen::Dynamic, Eigen::Dynamic> getK()
  {
    return k_;
  }

private:
  // bool isSymmetric(DMat<T> m)
  // {
  //   for (int i = 0; i < m.rows() - 1; ++i)
  //   {
  //     for (int j = i + 1; j < m.cols(); ++j)
  //     {
  //       if (m(i, j - i) != m(j - i, i))
  //         return false;
  //     }
  //   }
  //   return true;
  // }

  DMat<T> a_, b_, q_, r_, k_;
};