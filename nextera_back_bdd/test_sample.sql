-- Hypothétique table `users` gérée par Django
INSERT INTO users (id, username, email, password) VALUES
(1, 'admin', 'admin@nextera.fr', 'motdepasse123'),
(2, 'paul_dupont', 'paul@nextera.fr', 'motdepasse123'),
(3, 'julie_martin', 'julie@nextera.fr', 'motdepasse123'),
(4, 'luc_bernard', 'luc@nextera.fr', 'motdepasse123'),
(5, 'marie_durand', 'marie@nextera.fr', 'motdepasse123'),
(6, 'antoine_lefebvre', 'antoine@nextera.fr', 'motdepasse123');

-- Tags d'articles
INSERT INTO tags (name) VALUES
('technologie'),
('santé'),
('éducation'),
('divertissement'),
('science'),
('environnement');

-- Articles de test
INSERT INTO articles (article_id, title, content, creation_date, author_id) VALUES
(1, 'L\'avenir de l\'IA', 'Exploration des avancées de l\'intelligence artificielle.', NOW(), 1),
(2, 'Les bienfaits du sport', 'Pourquoi faire du sport est essentiel pour la santé.', NOW(), 2),
(3, 'La conquête spatiale en 2025', 'Les nouvelles missions et technologies spatiales.', NOW(), 3),
(4, 'Langages de programmation en 2025', 'Les langages les plus demandés sur le marché.', NOW(), 4),
(5, 'Énergies renouvelables', 'Le développement durable et les nouvelles sources d\'énergie.', NOW(), 5),
(6, 'Santé mentale et numérique', 'Comment la technologie peut-elle aider notre bien-être ?', NOW(), 6);

-- Liaisons articles-tags
INSERT INTO article_tags (article_id, tag_id) VALUES
(1, 1), (1, 5),
(2, 2),
(3, 5),
(4, 1), (4, 3),
(5, 6),
(6, 2), (6, 1);

-- Commentaires sur les articles
INSERT INTO comments (content, creation_date, author_id, article_id) VALUES
('Article très intéressant sur l\'IA.', NOW(), 2, 1),
('Bravo pour cette analyse !', NOW(), 3, 1),
('Le sport m\'a changé la vie.', NOW(), 1, 2),
('Très informatif, merci !', NOW(), 4, 2),
('J\'adore suivre les actualités spatiales.', NOW(), 2, 3),
('Superbe résumé des langages à apprendre.', NOW(), 5, 4),
('Important de parler des énergies propres.', NOW(), 6, 5),
('Sujet essentiel, bien traité.', NOW(), 3, 6);

-- Réactions aux articles
INSERT INTO article_reactions (user_id, article_id, reaction_type_id) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 1),
(4, 2, 4),
(5, 3, 5),
(6, 4, 6),
(1, 5, 2),
(2, 6, 3);

-- Réactions aux commentaires
INSERT INTO comment_reactions (user_id, comment_id, reaction_type_id) VALUES
(3, 1, 1),
(4, 2, 2),
(5, 3, 5),
(6, 4, 4),
(1, 5, 6),
(2, 6, 3),
(3, 7, 1),
(4, 8, 2);
"""