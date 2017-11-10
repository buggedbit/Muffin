package org.muffin.muffin.beans;

import lombok.*;

import java.awt.font.NumericShaper.*;
import java.sql.Timestamp;

@ToString
@EqualsAndHashCode
@Getter
@AllArgsConstructor
public class Show{
    private int id;
    private int movie_id;
    private int theatre_id;
    private Showtime showtime;
}