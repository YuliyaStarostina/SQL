DELIMITER $$
CREATE PROCEDURE second_times(counts INT)
BEGIN
	CASE
		WHEN counts < 60 THEN
			SELECT CONCAT(counts, ' ', 'seconds') AS Result;
        WHEN counts >= 60 AND counts < 3600 THEN
			SELECT CONCAT_WS(' ', counts DIV 60, 'minutes', MOD(counts, 60), 'seconds') AS Result;
        WHEN counts >= 3600 AND counts < 86400 THEN
			SELECT CONCAT_WS(' ', counts DIV 3600, 'hours', MOD(counts, 3600) DIV 60, 'minutes', MOD(MOD(counts, 3600),60), 'seconds') AS Result;
        ELSE
			SELECT CONCAT_WS(' ', counts DIV 86400, 'days', MOD(counts, 86400) DIV 3600, 'hours', MOD(MOD(counts, 86400),3600) DIV 60, 'minutes',
                             MOD(MOD(MOD(counts, 86400),3600),60), 'seconds') AS Result;
    END CASE;
END//
DELIMITER;
CALL second_times(12378);  