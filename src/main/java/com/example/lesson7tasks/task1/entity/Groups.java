package com.example.lesson7tasks.task1.entity;

import jakarta.persistence.*;
import lombok.*;
import org.hibernate.annotations.CreationTimestamp;

import java.time.LocalDateTime;
import java.util.List;

@Entity
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@ToString
public class Groups {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    @Column(nullable = false)
    private String group_name;
    @CreationTimestamp
    @Column(insertable = true, updatable = false, columnDefinition = "timestamp default current_timestamp")
    private LocalDateTime created_at;
    private int count;
    @OneToMany(
            cascade = CascadeType.ALL,
            mappedBy = "groups"
    )
    private List<Student> student;

    @Override
    public String toString() {
        return "Groups{" +
                "id=" + id +
                ", group_name='" + group_name + '\'' +
                ", created_at=" + created_at +
                ", count=" + count +
                '}';
    }
}
