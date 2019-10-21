package com.transcan.backendtranscan;

import com.google.maps.errors.ApiException;
import com.transcan.backendtranscan.services.MapService;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.data.jpa.convert.threeten.Jsr310JpaConverters;

import javax.annotation.PostConstruct;
import java.io.IOException;
import java.util.TimeZone;

@SpringBootApplication
@EntityScan(basePackageClasses = {
        BackendtranscanApplication.class,
        Jsr310JpaConverters.class
})
public class BackendtranscanApplication {
    @PostConstruct
    void init() {
        TimeZone.setDefault(TimeZone.getTimeZone("UTC"));
    }

    public static void main(String[] args) throws InterruptedException, ApiException, IOException {
        SpringApplication.run(BackendtranscanApplication.class, args);
        System.out.println(MapService.getGeolocation("מאיר שפיה 9, פתח תקווה"));
        System.out.println(MapService.convertAddressToLatLng("32.10164030,34.87328770"));
        System.out.println(MapService.convertAddressToLatLng("32.10194030,34.87388770"));
        System.out.println(MapService.getDistanceGeoLocation("32.10164030,34.87328770","32.10194030,34.87388770"));
    }
}