package app.model;

import app.entities.User;

import java.util.ArrayList;
import java.util.List;

import static java.util.stream.Collectors.toList;

public class Model {
    private static Model INSTANCE = new Model();

    private List<User> users;

    private Model() {
        users = new ArrayList<>();
    }

    public static Model getInstance() {
        return INSTANCE;
    }

    public void add(User user) {
        users.add(user);
    }

    public List<String> list() {
        return users.stream()
                .map(User::getName)
                .collect(toList());
    }
}
