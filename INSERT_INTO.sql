INSERT INTO artist_lists (name) VALUES
('NILETTO'),
('Filatov & Karas'),
('Ольга Серябкина'),
('Тима Белорусских'),
('RASA'),
('Элджей'),
('Dua Lipa'),
('Metallica')
ON CONFLICT (name)
DO NOTHING;

INSERT INTO the_genre (name) VALUES
('Russian pop-music'),
('Dance'),
('Russian rap'),
('Pop'),
('Rock')
ON CONFLICT (name)
DO NOTHING;

INSERT INTO albums (name, album_year) VALUES
('Краш', '2020-01-01'),
('Lirika', '2018-01-01'),
('Au au', '2019-01-01'),
('Твой первый диск - моя кассета', '2019-01-01'),
('Пчеловод', '2019-01-01'),
('Бошки Дымятся', '2017-01-01'),
('Fever', '2021-01-01'),
('Metallica', '1991-01-01')
ON CONFLICT (name)
DO NOTHING;

INSERT INTO tracks  (name, album_id, duration) VALUES 
('Краш', 1, 171),
('Lirika', 2, 256),
('Au au', 3, 176),
('Витаминка', 4, 175),
('Love Again', 5, 220),
('Cool', 5, 340),
('Physical', 5, 302),
('Levitating', 5, 256),
('Pretty Please', 5, 187),
('Enter Sandman', 7, 331),
('Sad But True', 7, 323),
('Holier Than Thou', 7, 227),
('The Unforgiven', 7, 383),
('Through The Never', 7, 242),
('Nothing Else Matters', 8, 405)
ON CONFLICT (name)
DO NOTHING;

INSERT INTO collections (name, coolection_year) VALUES
('Russian hits', '2020-01-01'),
('Pop tracks', '2018-01-01'),
('Metallica', '2020-01-01'),
('Rock hits', '1994-01-01'),
('Dance 2018', '2018-01-01'),
('Electro music', '2021-01-01'),
('Trance', '2019-01-01'),
('Best hits', '2015-01-01')
ON CONFLICT (name)
DO NOTHING;

INSERT INTO genreartist_lists (genre_id, artist_list_id) VALUES
(1, 1),
(2, 1),
(1, 3),
(1, 4),
(1, 5),
(3, 6),
(4, 7),
(5, 8)
ON CONFLICT (genre_id, artist_list_id)
DO NOTHING;

INSERT INTO artist_listsalbums (artist_list_id, album_id) VALUES
(1, 1), 
(2, 2),
(2, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8)
ON CONFLICT (artist_list_id , album_id)
DO NOTHING;

INSERT INTO collectionstracks (track_id, collection_id) VALUES 
(1, 1),
(2, 6),
(3, 5),
(4, 1),
(5, 8),
(6, 2),
(7, 7),
(8, 2),
(9, 2),
(10, 4),
(11, 4),
(12, 3),
(13, 3),
(14, 3)
ON CONFLICT (track_id, collection_id)
DO NOTHING;





