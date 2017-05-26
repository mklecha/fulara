package pl.fulara.model;

import java.util.List;

public class Gifts extends Ftlable {
    private List<Gift> gifts;

    public Gifts(List<Gift> gifts) {
        this.gifts = gifts;
    }

    public List<Gift> getGifts() {
        return gifts;
    }
}