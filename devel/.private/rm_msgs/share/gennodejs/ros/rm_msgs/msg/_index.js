
"use strict";

let ShootBeforehandCmd = require('./ShootBeforehandCmd.js');
let KalmanData = require('./KalmanData.js');
let BalanceState = require('./BalanceState.js');
let DbusData = require('./DbusData.js');
let LegCmd = require('./LegCmd.js');
let ChassisCmd = require('./ChassisCmd.js');
let SentryDeviate = require('./SentryDeviate.js');
let BusState = require('./BusState.js');
let GpioData = require('./GpioData.js');
let LocalHeatState = require('./LocalHeatState.js');
let GimbalDesError = require('./GimbalDesError.js');
let ExchangerMsg = require('./ExchangerMsg.js');
let ShootState = require('./ShootState.js');
let LpData = require('./LpData.js');
let ActuatorState = require('./ActuatorState.js');
let ShootCmd = require('./ShootCmd.js');
let TagMsg = require('./TagMsg.js');
let MovingAverageData = require('./MovingAverageData.js');
let MultiDofCmd = require('./MultiDofCmd.js');
let TagMsgArray = require('./TagMsgArray.js');
let TofRadarData = require('./TofRadarData.js');
let GimbalCmd = require('./GimbalCmd.js');
let GimbalPosState = require('./GimbalPosState.js');
let TrackData = require('./TrackData.js');
let TargetDetection = require('./TargetDetection.js');
let TargetDetectionArray = require('./TargetDetectionArray.js');
let PriorityArray = require('./PriorityArray.js');
let GameRobotStatus = require('./GameRobotStatus.js');
let DartInfo = require('./DartInfo.js');
let RobotsPositionData = require('./RobotsPositionData.js');
let PowerHeatData = require('./PowerHeatData.js');
let RadarEnemyPosition = require('./RadarEnemyPosition.js');
let Buff = require('./Buff.js');
let GameRobotHp = require('./GameRobotHp.js');
let CurrentSentryPosData = require('./CurrentSentryPosData.js');
let PowerManagementSystemExceptionData = require('./PowerManagementSystemExceptionData.js');
let ClientMapReceiveData = require('./ClientMapReceiveData.js');
let ClientMapSendData = require('./ClientMapSendData.js');
let RadarData = require('./RadarData.js');
let EngineerUi = require('./EngineerUi.js');
let RadarEnemyHp = require('./RadarEnemyHp.js');
let MapSentryData = require('./MapSentryData.js');
let RadarRobotBuff = require('./RadarRobotBuff.js');
let RadarInfo = require('./RadarInfo.js');
let EventData = require('./EventData.js');
let PowerManagementProcessStackOverflowData = require('./PowerManagementProcessStackOverflowData.js');
let VisualizeStateData = require('./VisualizeStateData.js');
let RadarEnemyBulletAllowance = require('./RadarEnemyBulletAllowance.js');
let RadarToSentry = require('./RadarToSentry.js');
let GameStatus = require('./GameStatus.js');
let RadarMarkData = require('./RadarMarkData.js');
let DartStatus = require('./DartStatus.js');
let DartRemainingTime = require('./DartRemainingTime.js');
let CapacityData = require('./CapacityData.js');
let ShootData = require('./ShootData.js');
let ManualToReferee = require('./ManualToReferee.js');
let SentryCmd = require('./SentryCmd.js');
let RobotHurt = require('./RobotHurt.js');
let PowerManagementUnknownExceptionData = require('./PowerManagementUnknownExceptionData.js');
let BulletAllowance = require('./BulletAllowance.js');
let PowerManagementInitializationExceptionData = require('./PowerManagementInitializationExceptionData.js');
let PowerManagementSampleAndStatusData = require('./PowerManagementSampleAndStatusData.js');
let SentryInfo = require('./SentryInfo.js');
let RadarEnemyBuff = require('./RadarEnemyBuff.js');
let IcraBuffDebuffZoneStatus = require('./IcraBuffDebuffZoneStatus.js');
let SupplyProjectileAction = require('./SupplyProjectileAction.js');
let RfidStatus = require('./RfidStatus.js');
let RadarEnemyStatus = require('./RadarEnemyStatus.js');
let SentryAttackingTarget = require('./SentryAttackingTarget.js');
let RadarRadioData = require('./RadarRadioData.js');
let DartClientCmd = require('./DartClientCmd.js');
let RadarDoubleKey = require('./RadarDoubleKey.js');
let RadarCmd = require('./RadarCmd.js');
let StateCmd = require('./StateCmd.js');
let GameRobotPosData = require('./GameRobotPosData.js');
let EngineerAction = require('./EngineerAction.js');
let EngineerActionResult = require('./EngineerActionResult.js');
let EngineerResult = require('./EngineerResult.js');
let EngineerActionGoal = require('./EngineerActionGoal.js');
let EngineerGoal = require('./EngineerGoal.js');
let EngineerActionFeedback = require('./EngineerActionFeedback.js');
let EngineerFeedback = require('./EngineerFeedback.js');

module.exports = {
  ShootBeforehandCmd: ShootBeforehandCmd,
  KalmanData: KalmanData,
  BalanceState: BalanceState,
  DbusData: DbusData,
  LegCmd: LegCmd,
  ChassisCmd: ChassisCmd,
  SentryDeviate: SentryDeviate,
  BusState: BusState,
  GpioData: GpioData,
  LocalHeatState: LocalHeatState,
  GimbalDesError: GimbalDesError,
  ExchangerMsg: ExchangerMsg,
  ShootState: ShootState,
  LpData: LpData,
  ActuatorState: ActuatorState,
  ShootCmd: ShootCmd,
  TagMsg: TagMsg,
  MovingAverageData: MovingAverageData,
  MultiDofCmd: MultiDofCmd,
  TagMsgArray: TagMsgArray,
  TofRadarData: TofRadarData,
  GimbalCmd: GimbalCmd,
  GimbalPosState: GimbalPosState,
  TrackData: TrackData,
  TargetDetection: TargetDetection,
  TargetDetectionArray: TargetDetectionArray,
  PriorityArray: PriorityArray,
  GameRobotStatus: GameRobotStatus,
  DartInfo: DartInfo,
  RobotsPositionData: RobotsPositionData,
  PowerHeatData: PowerHeatData,
  RadarEnemyPosition: RadarEnemyPosition,
  Buff: Buff,
  GameRobotHp: GameRobotHp,
  CurrentSentryPosData: CurrentSentryPosData,
  PowerManagementSystemExceptionData: PowerManagementSystemExceptionData,
  ClientMapReceiveData: ClientMapReceiveData,
  ClientMapSendData: ClientMapSendData,
  RadarData: RadarData,
  EngineerUi: EngineerUi,
  RadarEnemyHp: RadarEnemyHp,
  MapSentryData: MapSentryData,
  RadarRobotBuff: RadarRobotBuff,
  RadarInfo: RadarInfo,
  EventData: EventData,
  PowerManagementProcessStackOverflowData: PowerManagementProcessStackOverflowData,
  VisualizeStateData: VisualizeStateData,
  RadarEnemyBulletAllowance: RadarEnemyBulletAllowance,
  RadarToSentry: RadarToSentry,
  GameStatus: GameStatus,
  RadarMarkData: RadarMarkData,
  DartStatus: DartStatus,
  DartRemainingTime: DartRemainingTime,
  CapacityData: CapacityData,
  ShootData: ShootData,
  ManualToReferee: ManualToReferee,
  SentryCmd: SentryCmd,
  RobotHurt: RobotHurt,
  PowerManagementUnknownExceptionData: PowerManagementUnknownExceptionData,
  BulletAllowance: BulletAllowance,
  PowerManagementInitializationExceptionData: PowerManagementInitializationExceptionData,
  PowerManagementSampleAndStatusData: PowerManagementSampleAndStatusData,
  SentryInfo: SentryInfo,
  RadarEnemyBuff: RadarEnemyBuff,
  IcraBuffDebuffZoneStatus: IcraBuffDebuffZoneStatus,
  SupplyProjectileAction: SupplyProjectileAction,
  RfidStatus: RfidStatus,
  RadarEnemyStatus: RadarEnemyStatus,
  SentryAttackingTarget: SentryAttackingTarget,
  RadarRadioData: RadarRadioData,
  DartClientCmd: DartClientCmd,
  RadarDoubleKey: RadarDoubleKey,
  RadarCmd: RadarCmd,
  StateCmd: StateCmd,
  GameRobotPosData: GameRobotPosData,
  EngineerAction: EngineerAction,
  EngineerActionResult: EngineerActionResult,
  EngineerResult: EngineerResult,
  EngineerActionGoal: EngineerActionGoal,
  EngineerGoal: EngineerGoal,
  EngineerActionFeedback: EngineerActionFeedback,
  EngineerFeedback: EngineerFeedback,
};
