package model;

import jakarta.persistence.*;
import lombok.*;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@ToString
@Builder
@Entity
@Table(name = "ServletCURD")
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int UserId;
    private String Name;
    private String UserName;
    private String UserPassword;
}
