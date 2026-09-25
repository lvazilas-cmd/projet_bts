-- Exécuté automatiquement par MySQL au PREMIER démarrage (volume vide)
SET NAMES utf8mb4;

CREATE TABLE IF NOT EXISTS produit (
    id          INT UNSIGNED  NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nom         VARCHAR(100)  NOT NULL,
    description TEXT          NULL,
    prix        DECIMAL(10,2) NOT NULL DEFAULT 0.00,
    stock       INT UNSIGNED  NOT NULL DEFAULT 0,
    cree_le     DATETIME      NOT NULL DEFAULT CURRENT_TIMESTAMP,
    modifie_le  DATETIME      NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO produit (nom, description, prix, stock) VALUES
  ('Clavier mécanique',  'Clavier AZERTY, switchs tactiles, rétroéclairé', 89.90, 25),
  ('Souris sans fil',    'Souris ergonomique 2,4 GHz, 6 boutons',          34.50, 60),
  ('Écran 27 pouces',    'Dalle IPS 2560 x 1440, 75 Hz',                   249.00, 8),
  ('Station d''accueil', 'USB-C, 2 HDMI, Ethernet, charge 100 W',          129.99, 12),
  ('Casque audio',       'Casque filaire avec micro antibruit',            59.00, 0);
