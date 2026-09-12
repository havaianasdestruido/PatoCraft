package com.microsoft.xbox.idp.model;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class GamerTag {

    public static class Request {
        public String gamertag;
        public boolean preview;
        public String reservationId;
    }

    public static class Response {
        public boolean hasFree;
    }

    public static class ReservationRequest {
        public String Gamertag;
        public String ReservationId;

        public ReservationRequest() {
        }

        public ReservationRequest(String gamertag, String reservationId) {
            this.Gamertag = gamertag;
            this.ReservationId = reservationId;
        }
    }
}
