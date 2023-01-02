CREATE TABLE IF NOT EXISTS "properties" (
    id      SERIAL primary key,
    name    varchar(24) not null unique,
    address text not null,
    price    integer default 0 not null,
    size    bigint default 0 not null,
    created_at TIMESTAMP default CURRENT_TIMESTAMP
    );

CREATE INDEX IF NOT EXISTS index_user_price ON "properties" (price DESC);
CREATE INDEX IF NOT EXISTS index_user_id ON "properties" (id DESC);
CREATE INDEX IF NOT EXISTS index_user_size ON "properties" (size DESC);



INSERT INTO "properties"(id, name, address, price, size, created_at)
VALUES (1, 'Hunter George', 'Am Bichlberg 7, 12103  Bischofswiesen', 100, 100, '2022-10-6'),
       (2, 'Kyle Johnson', 'Martiusstraße 15, 80802  München', 200, 150, '2022-8-12'),
       (3, 'Pat Vang', 'Hallwachsstraße  113, 10896  Dresden', 300, 100, '2022-10-10'),
       (4, 'Brad Bailey', 'Ringstraße 19, 95191    Leupoldsgrün', 400, 200, '2022-3-31'),
       (5, 'Olive Yew', 'Rhönstraße  123, 80802  Gersthofen', 500, 100, '2022-10-6'),
       (6, 'Lee A. Sun', 'Valleystraße  32, 80802  München', 600, 100, '2022-8-12'),
       (7, 'Rhoda Report', 'Martiusstraße 13, 95191    Gersthofen', 700, 100, '2022-10-10'),
       (8, 'Harriet Upp', 'Bachstraße  43, 80802  Gersthofen', 800, 300, '2022-3-31'),
       (9, 'Skye Blue', 'Martiusstraße 63, 95191    Leupoldsgrün', 900, 100, '2022-10-6'),
       (10, 'Staum Clowd', 'Bachstraße   73, 80802  Gersthofen', 10000, 400, '2022-8-12'),
       (11, 'Anne Ortha', 'Vinzenz-Koch-Straße  193, 80802  Weigendorf', 11000, 300, '2022-10-10'),
       (12, 'Day Biley', 'Rhönstraße  83, 97762 München', 12000, 200, '1992-3-31'),
       (13, 'Anna Logwatch', 'Martiusstraße 83, 80802  Leupoldsgrün', 13000, 100, '2022-10-6'),
       (14, 'Faye Clether', 'Bachstraße   163, 97762      München', 14000, 150, '2022-8-12'),
       (15, 'Emma Grate', 'Rhönstraße  17, 80802  Weigendorf', 15000, 175, '2022-10-10'),
       (16, 'Stanley Knife', 'Bachstraße  143, 80802  Leupoldsgrün', 16000, 90, '2022-3-31'),
       (17, 'Carmen Sayid', 'Vinzenz-Koch-Straße  164, 95191    Gersthofen', 17000, 40, '2022-10-6'),
       (18, 'Dulcie Veeta', 'Martiusstraße 148, 80802  Weigendorf', 18000, 60, '2022-8-12'),
       (19, 'Marsha Mellow', 'Bachstraße  24, 95191    Gersthofen', 19000, 100, '2022-10-10'),
       (20, 'Polly N. Satcherayted', 'Vinzenz-Koch-Straße 58, 97762 Hammelburg', 21000, 100, '2022-3-31'),
       (21, 'Al Zeimers', 'Vinzenz-Koch-Straße 58, 84186   Hammelburg', 21000, 100, '2022-3-31'),
       (22, 'Uri Nalisis', 'Vinzenz-Koch-Straße 60, 97762 München', 21000, 100, '2022-3-31'),
       (23, 'Dixie Normous', 'Vinzenz-Koch-Straße 70, 71570  Bremen', 21000, 100, '2022-3-31'),
       (24, 'Honey Ryder', 'Vinzenz-Koch-Straße 52, 97762 Bremen', 21000, 100, '2022-3-31'),
       (25, 'Melody Sunshine', 'Vinzenz-Koch-Straße 58, 97762 Oppenweiler', 21000, 100, '2022-3-31'),
       (26, 'Dustin Trailblazer', 'Tilsiter Straße 6, 84186     Bremen', 21000, 100, '2022-3-31'),
       (27, 'Donald Canard', 'Vinzenz-Koch-Straße 90, 97762 Oppenweiler', 21000, 100, '2022-3-31'),
       (28, 'Michael J. Reynard', 'Tilsiter Straße 6, 84186  Bremen', 21000, 100, '2022-3-31'),
       (29, 'Michael Souris', 'Vinzenz-Koch-Straße 99, 97762 Oppenweiler', 21000, 100, '2022-3-31'),
       (30, 'Ruby Bartlett', 'Tilsiter Straße 6, 71570   Bremen', 21000, 100, '2022-3-31'),
       (31, 'Holly Goodhead', 'Vinzenz-Koch-Straße 45, 71570 Vilsheim', 21000, 100, '2022-3-31'),
       (32, 'enny Flex', 'Emmaweg 58, 97762 Bremen', 21000, 100, '2022-3-31'),
       (33, 'Dixie Normous', 'Emmaweg 55, 71570 Vilsheim', 21000, 100, '2022-3-31');