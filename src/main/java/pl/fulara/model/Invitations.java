package pl.fulara.model;

import java.util.List;

public class Invitations extends Ftlable {
    private List<Invitation> invitations;

    public Invitations(List<Invitation> invitations) {
        this.invitations = invitations;
    }

    public List<Invitation> getInvitations() {
        return invitations;
    }
}