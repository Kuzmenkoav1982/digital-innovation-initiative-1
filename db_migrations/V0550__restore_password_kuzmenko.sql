UPDATE t_p61016064_digital_innovation_i.users
SET password_hash = '$argon2id$v=19$m=19456,t=2,p=1$8KIDLug8hT/tiXjP8qqV1Q$E3HFiRi9Bes3zxMhx7cwcqQ3l7+gH/25XYulQwxlOvg'
WHERE LOWER(email) = 'kuzmenkoav1982@yandex.ru';

UPDATE t_p61016064_digital_innovation_i.rate_limits
SET hit_count = 0, blocked_until = NULL
WHERE bucket = 'login_attempts' AND key LIKE '%:kuzmenkoav1982@yandex.ru';