CREATE TABLE IF NOT EXISTS aliases (
    account_id INTEGER,
    personaname TEXT,
    name_since TEXT
);

CREATE TABLE IF NOT EXISTS competitive_rank (
    account_id INTEGER,
    rating INTEGER
);

CREATE TABLE IF NOT EXISTS hero_ranking (
    account_id INTEGER,
    hero_id INTEGER,
    score REAL
);

CREATE TABLE IF NOT EXISTS heroes (
    id INTEGER,
    name TEXT,
    localized_name TEXT,
    primary_attr TEXT,
    attack_type TEXT,
    roles TEXT, -- ARRAY
    legs INTEGER
);

CREATE TABLE IF NOT EXISTS leaderboard_rank (
    account_id INTEGER,
    rating INTEGER
);

CREATE TABLE IF NOT EXISTS match_patch (
    match_id INTEGER,
    patch TEXT
);

CREATE TABLE IF NOT EXISTS matches (
    match_id INTEGER,
    match_seq_num INTEGER,
    radiant_win INTEGER, -- BOOLEAN
    start_time INTEGER,
    duration INTEGER,
    tower_status_radiant INTEGER,
    tower_status_dire INTEGER,
    barracks_status_radiant INTEGER,
    barracks_status_dire INTEGER,
    cluster INTEGER,
    first_blood_time INTEGER,
    lobby_type INTEGER,
    human_players INTEGER,
    leagueid INTEGER,
    positive_votes INTEGER,
    negative_votes INTEGER,
    game_mode INTEGER,
    engine INTEGER,
    picks_bans TEXT, -- ARRAY
    radiant_team_id INTEGER,
    dire_team_id INTEGER,
    radiant_team_name TEXT,
    dire_team_name TEXT,
    radiant_team_complete INTEGER,
    dire_team_complete INTEGER,
    radiant_captain INTEGER,
    dire_captain INTEGER,
    chat TEXT, -- ARRAY
    objectives TEXT, -- ARRAY
    radiant_gold_adv TEXT, -- ARRAY
    radiant_xp_adv TEXT, -- ARRAY
    teamfights TEXT, -- ARRAY
    version INTEGER,
    cosmetics TEXT, -- JSON
    radiant_score INTEGER,
    dire_score INTEGER,
    draft_timings TEXT, -- ARRAY
    series_id INTEGER,
    series_type INTEGER,
    replay_salt INTEGER
);

CREATE TABLE IF NOT EXISTS picks_bans (
    match_id INTEGER,
    is_pick INTEGER, -- BOOLEAN
    hero_id INTEGER,
    team INTEGER,
    ord INTEGER
);

CREATE TABLE IF NOT EXISTS player_computed_mmr (
    account_id INTEGER,
    computed_mmr REAL,
    delta REAL,
    match_id INTEGER
);

CREATE TABLE IF NOT EXISTS player_computed_mmr_turbo (
    account_id INTEGER,
    computed_mmr REAL,
    delta REAL,
    match_id INTEGER
);

CREATE TABLE IF NOT EXISTS player_match_history (
    account_id INTEGER,
    match_id INTEGER,
    player_slot INTEGER,
    retries INTEGER
);

CREATE TABLE IF NOT EXISTS player_matches (
    match_id INTEGER,
    account_id INTEGER,
    player_slot INTEGER,
    hero_id INTEGER,
    item_0 INTEGER,
    item_1 INTEGER,
    item_2 INTEGER,
    item_3 INTEGER,
    item_4 INTEGER,
    item_5 INTEGER,
    kills INTEGER,
    deaths INTEGER,
    assists INTEGER,
    leaver_status INTEGER,
    gold INTEGER,
    last_hits INTEGER,
    denies INTEGER,
    gold_per_min INTEGER,
    xp_per_min INTEGER,
    gold_spent INTEGER,
    hero_damage INTEGER,
    tower_damage INTEGER,
    hero_healing INTEGER,
    level INTEGER,
    additional_units TEXT, -- ARRAY
    stuns REAL,
    max_hero_hit TEXT, -- JSON
    times TEXT, -- ARRAY
    gold_t TEXT, -- ARRAY
    lh_t TEXT, -- ARRAY
    xp_t TEXT, -- ARRAY
    obs_log TEXT, -- ARRAY
    sen_log TEXT, -- ARRAY
    purchase_log TEXT, -- ARRAY
    kills_log TEXT, -- ARRAY
    buyback_log TEXT, -- ARRAY
    lane_pos TEXT, -- JSON
    obs TEXT, -- JSON
    sen TEXT, -- JSON
    actions TEXT, -- JSON
    pings TEXT, -- JSON
    purchase TEXT, -- JSON
    gold_reasons TEXT, -- JSON
    xp_reasons TEXT, -- JSON
    killed TEXT, -- JSON
    item_uses TEXT, -- JSON
    ability_uses TEXT, -- JSON
    hero_hits TEXT, -- JSON
    damage TEXT, -- JSON
    damage_taken TEXT, -- JSON
    damage_inflictor TEXT, -- JSON
    runes TEXT, -- JSON
    killed_by TEXT, -- JSON
    kill_streaks TEXT, -- JSON
    multi_kills TEXT, -- JSON
    life_state TEXT, -- JSON
    damage_inflictor_received TEXT, -- JSON
    obs_placed INTEGER,
    sen_placed INTEGER,
    creeps_stacked INTEGER,
    camps_stacked INTEGER,
    rune_pickups INTEGER,
    obs_left_log TEXT, -- ARRAY
    sen_left_log TEXT, -- ARRAY
    ability_upgrades_arr TEXT, -- ARRAY
    party_id INTEGER,
    permanent_buffs TEXT, -- ARRAY
    backpack_0 INTEGER,
    backpack_1 INTEGER,
    backpack_2 INTEGER,
    runes_log TEXT, -- ARRAY
    lane INTEGER,
    lane_role INTEGER,
    is_roaming INTEGER, -- BOOLEAN
    firstblood_claimed INTEGER,
    teamfight_participation REAL,
    towers_killed INTEGER,
    roshans_killed INTEGER,
    observers_placed INTEGER,
    party_size INTEGER,
    ability_targets TEXT, -- JSON
    damage_targets TEXT, -- JSON
    dn_t TEXT, -- ARRAY
    connection_log TEXT, -- ARRAY
    backpack_3 INTEGER,
    item_neutral INTEGER,
    net_worth INTEGER,
    hero_variant INTEGER,
    neutral_tokens_log TEXT, -- ARRAY
    neutral_item_history TEXT -- ARRAY
);

CREATE TABLE IF NOT EXISTS player_ratings (
    account_id INTEGER,
    match_id INTEGER,
    solo_competitive_rank INTEGER,
    competitive_rank INTEGER,
    time TEXT
);

CREATE TABLE IF NOT EXISTS players (
    account_id INTEGER,
    steamid TEXT,
    avatar TEXT,
    avatarmedium TEXT,
    avatarfull TEXT,
    profileurl TEXT,
    personaname TEXT,
    last_login TEXT,
    full_history_time TEXT,
    cheese INTEGER,
    fh_unavailable INTEGER, -- BOOLEAN
    loccountrycode TEXT,
    last_match_time TEXT,
    plus INTEGER, -- BOOLEAN
    profile_time TEXT,
    rank_tier_time TEXT
);


CREATE TABLE IF NOT EXISTS rank_tier (
    account_id INTEGER,
    rating INTEGER
);

CREATE TABLE IF NOT EXISTS rank_tier_history (
    account_id INTEGER,
    time TEXT,
    rank_tier INTEGER
);

CREATE TABLE IF NOT EXISTS scenarios (
    hero_id INTEGER,
    item TEXT,
    time INTEGER,
    lane_role INTEGER,
    games INTEGER,
    wins INTEGER,
    epoch_week INTEGER
);

CREATE TABLE IF NOT EXISTS solo_competitive_rank (
    account_id INTEGER,
    rating INTEGER
);

CREATE TABLE IF NOT EXISTS subscriber (
    account_id INTEGER,
    customer_id TEXT,
    status TEXT
);

CREATE TABLE IF NOT EXISTS subscriptions (
    account_id INTEGER,
    customer_id TEXT,
    amount INTEGER,
    active_until TEXT -- DATE
);

CREATE TABLE IF NOT EXISTS user_usage (
    account_id INTEGER,
    ip TEXT,
    usage_count INTEGER,
    timestamp TEXT
);




