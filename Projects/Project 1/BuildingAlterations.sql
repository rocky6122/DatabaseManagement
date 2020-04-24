#Project One
#Written by John Imgrund

USE project_one;

ALTER TABLE building
	ADD CONSTRAINT FK_heating
		FOREIGN KEY(heating_id) REFERENCES heating(heating_id),
	ADD CONSTRAINT FK_area
		FOREIGN KEY(area_id) REFERENCES heating(area_id),
	ADD CONSTRAINT FK_property_grade
		FOREIGN KEY(property_grade_id) REFERENCES heating(property_grade_id),
	ADD CONSTRAINT FK_property_value
		FOREIGN KEY(property_value_id) REFERENCES heating(property_value_id),
	ADD CONSTRAINT FK_rooms
		FOREIGN KEY(rooms_id) REFERENCES heating(rooms_id);