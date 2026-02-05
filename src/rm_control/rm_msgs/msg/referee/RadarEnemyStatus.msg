uint16 remainder_coin
uint16 total_coin
uint32 status_bitmask

# Bit interpretation (True if occupied by enemy/active for enemy)
# Bit 0
bool enemy_assembly
# Bit 1-2
bool enemy_ring_highland
# Bit 3
bool enemy_trapezoidal_highland
# Bit 4-5
bool enemy_fort
# Bit 6-7
bool enemy_outpost
# Bit 8 (Base Buff Point)
bool enemy_base_buff
# Bit 9 (Flying Slope Pre)
bool enemy_flying_slope_pre
# Bit 10 (Flying Slope Post)
bool enemy_flying_slope_post
# Bit 11 (Highway/Tunnel L?)
bool enemy_highway_tunnel_l
# Bit 12 (Highway/Tunnel H?)
bool enemy_highway_tunnel_h
# Bit 13 (Highland High)
bool enemy_central_high
# Bit 14 (Highland Fly?)
bool enemy_central_low
# Bit 15 (Highland Road)
bool enemy_highway_high


