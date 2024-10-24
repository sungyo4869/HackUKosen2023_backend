USE noel-db;

CREATE TABLE users
(
  user_id     INT PRIMARY KEY AUTO_INCREMENT,
  user_name   VARCHAR(255),
  password    VARCHAR(255)
);

CREATE TABLE scores
(
    score_id INT PRIMARY KEY AUTO_INCREMENT,
    score    INT,
    user_id  INT
);

CREATE TABLE cities
(
    city_id    INT PRIMARY KEY AUTO_INCREMENT,
    city_name  VARCHAR(255),
    city_score INT
);

CREATE TABLE tokens
(
    token_id INT PRIMARY KEY AUTO_INCREMENT,
    token    VARCHAR(255),
    expiration_date BIGINT,
    user_id  INT
);

INSERT INTO users
    (user_id, user_name, password)
VALUES
    (1, 'かな', 'knPass'),
    (2, 'まな', 'mnPass'),
    (3, 'こうた', 'ktPass'),
    (4, 'たけし', 'tkPass'),
    (5, 'かける', 'kkPass'),
    (6, 'よしこ', 'ysPass');


INSERT INTO scores
    (score_id, score, user_id)
VALUES
    (1, 0, 1),
    (2, 0, 2),
    (3, 0, 3),
    (4, 0, 4),
    (5, 0, 5),
    (6, 0, 6);

INSERT INTO cities
    (city_id, city_name, city_score)
VALUES
    (1, 'レイキャビク', 100),
    (2, 'ダブリン', 100),
    (3, 'バクー', 100),
    (4, 'カブール', 200),
    (5, 'ワシントンD.C.', 500),
    (6, 'アブダビ', 100),
    (7, 'アルジェ', 200),
    (8, 'ブエノスアイレス', 200),
    (9, 'オラニエスタット', 100),
    (10, 'ティラナ', 100),
    (11, 'エレバン', 100),
    (12, 'ルアンダ', 200),
    (13, 'セントジョンズ', 100),
    (14, 'アンドララベリャ', 100),
    (15, 'サナア', 200),
    (16, 'ロンドン', 200),
    (17, 'エルサレム', 100),
    (18, 'ローマ', 100),
    (19, 'バグダット', 200),
    (20, 'テヘラン', 500),
    (21, 'ニューデリー', 1000),
    (22, 'ジャカルタ', 500),
    (23, 'カンパラ', 500),
    (24, 'キーウ', 100),
    (25, 'タシケント', 100),
    (26, 'モンテビデオ', 100),
    (27, 'キト', 100),
    (28, 'カイロ', 500),
    (29, 'タリン', 100),
    (30, 'アディスアベバ.', 500),
    (31, 'アスマラ', 100),
    (32, 'サンサルバドル', 100),
    (33, 'キャンベラ', 100),
    (34, 'ウィーン', 100),
    (35, 'マスカット', 100),
    (36, 'アムステルダム', 100),
    (37, 'アクラ', 200),
    (38, 'プライア', 100),
    (39, 'ジョージタウン', 100),
    (40, 'アスタナ', 100),
    (41, 'ドーハ', 100),
    (42, 'オタワ', 100),
    (43, 'リーブルビル', 100),
    (44, 'ヤウンデ', 100),
    (45, 'バンジュール', 100),
    (46, 'ソウル', 100),
    (47, 'プノンペン', 100),
    (48, 'コナクリ', 100),
    (49, 'ビサウ', 100),
    (50, 'ニコシア', 100),
    (51, 'ハバナ', 100),
    (52, 'ウィレムスタット', 100),
    (53, 'アテネ', 100),
    (54, 'サウスタラワ', 100),
    (55, 'ビシュケク', 100),
    (56, 'グアテマラ', 100),
    (57, 'バステール', 100),
    (58, 'ハガニア', 100),
    (59, 'クウェート', 100),
    (60, 'セントジョージズ', 100),
    (61, 'ザグレプ', 100),
    (62, 'ナイロビ', 500),
    (63, 'コートジボワール', 100),
    (64, 'サンホセ', 100),
    (65, 'プリシュティナ', 100),
    (66, 'モロニ', 100),
    (67, 'ボゴタ', 200),
    (68, 'キンシャサ', 500),
    (69, 'リヤド', 100),
    (70, 'アピア', 100),
    (71, 'サントメプリンシペ', 100),
    (72, 'ルサカ', 100),
    (73, 'フリータウン', 100),
    (74, 'ジブチ', 100),
    (75, 'キングストン', 100),
    (76, 'トビリシ', 100),
    (77, 'ダマスカス', 100),
    (78, 'シンガポール', 100),
    (79, 'ハラレ', 100),
    (80, 'ベルン', 100),
    (81, 'ストックホルム', 100),
    (82, 'ハルツーム', 200),
    (83, 'マドリード', 100),
    (84, 'パラマリボ', 100),
    (85, 'スリジャヤワルダナプラコッテ', 100),
    (86, 'ブラチスラバ', 100),
    (87, 'リュブリャナ', 100),
    (88, 'ムババネ', 100),
    (89, 'ダカール', 100),
    (90, 'ベオグラード', 100),
    (91, 'キングスタウン', 100),
    (92, 'カストリーズ', 100),
    (93, 'ビクトリア', 100),
    (94, 'モガディシュ', 100),
    (95, 'ホニアラ', 100),
    (96, 'バンコク', 200),
    (97, 'ドゥシャンベ', 100),
    (98, 'ドドマ', 500),
    (99, 'プラハ', 100),
    (100, 'ンジャメナ', 100),
    (101, 'チャンネル諸島', 100),
    (102, 'チュニス', 100),
    (103, 'サンティアゴ', 100),
    (104, 'コペンハーゲン', 100),
    (105, 'ベルリン', 200),
    (106, 'サントドミンゴ', 100),
    (107, 'ポートオブスペイン', 100),
    (108, 'アシガバート', 100),
    (109, 'アンカラ', 500),
    (110, 'ヌクアロファ', 100),
    (111, 'ロメ', 100),
    (112, 'アブジャ', 500),
    (113, 'ウィントフーク', 100),
    (114, 'マナグア', 100),
    (115, 'ニアメー', 100),
    (116, 'ヌメア', 100),
    (117, 'ウェリントン', 100),
    (118, 'カトマンズ', 100),
    (119, 'オスロ', 100),
    (120, 'ポルトープランス', 100),
    (121, 'イスラマバード', 500),
    (122, 'パナマシティ', 100),
    (123, 'ポートビラ', 100),
    (124, 'ナッソー', 100),
    (125, 'ポートモレスビー', 100),
    (126, 'アスンシオン', 100),
    (127, 'ブリッジタウン', 100),
    (128, 'エルサレム', 100),
    (129, 'ブダペスト', 100),
    (130, 'ダッカ', 500),
    (131, 'マナーマ', 100),
    (132, 'スバ', 100),
    (133, 'マニラ', 500),
    (134, 'ヘルシンキ', 100),
    (135, 'サンフアン', 100),
    (136, 'ブラジリア', 500),
    (137, 'パリ', 200),
    (138, 'フランス領ギアナ', 100),
    (139, 'フランス領ポリネシア', 100),
    (140, 'ソフィア', 100),
    (141, 'ワガドゥグー', 100),
    (142, 'バンダルスリブガワン', 100),
    (143, 'ギテガ', 100),
    (144, 'ティンプー', 100),
    (145, 'ハノイ', 500),
    (146, 'ポルトノボ', 100),
    (147, 'カラカス', 100),
    (148, 'ミンスク', 100),
    (149, 'ベルモパン', 100),
    (150, 'ブリュッセル', 100),
    (151, 'リマ', 100),
    (152, 'サラエボ', 100),
    (153, 'ハボローネ', 100),
    (154, 'パペーテ', 100),
    (155, 'ラパス', 100),
    (156, 'リスボン', 100),
    (157, 'テグシガルパ', 100),
    (158, 'ワルシャワ', 100),
    (159, '花地瑪堂区', 100),
    (160, 'スコピエ', 100),
    (161, 'アンタナナリボ', 200),
    (162, 'ザウジ', 100),
    (163, 'リロングウェ', 100),
    (164, 'バマコ', 100),
    (165, 'バレッタ', 100),
    (166, 'フォールドフランス', 100),
    (167, 'クアラルンプル', 100),
    (168, 'パリキール', 100),
    (169, 'ネピドー', 200),
    (170, 'メキシコシティ', 500),
    (171, 'メラネシア', 100),
    (172, 'マプート', 200),
    (173, 'マレ', 100),
    (174, 'キシナウ', 100),
    (175, 'ラバト', 100),
    (176, 'ウランバートル', 100),
    (177, 'ポドゴリツァ', 100),
    (178, 'ポートルイス', 100),
    (179, 'ヌアクショット', 100),
    (180, 'アンマン', 100),
    (181, 'ヴィエンチャン', 100),
    (182, 'リガ', 100),
    (183, 'ビルニュス', 100),
    (184, 'トリポリ', 100),
    (185, 'ファドゥーツ', 100),
    (186, 'モンロビア', 100),
    (187, 'ルクセンブルク', 100),
    (188, 'キガリ', 100),
    (189, 'ブカレスト', 100),
    (190, 'マセル', 100),
    (191, 'ベイルート', 100),
    (192, 'サンドニ', 100),
    (193, 'モスクワ', 500),
    (194, '北京', 800),
    (195, 'ジューバー', 100),
    (196, 'プレトリア', 200),
    (197, '東京', 500),
    (198, '平壌', 100),
    (199, 'ディリ', 100),
    (200, 'マラボ', 100),
    (201, '中西区', 100);
