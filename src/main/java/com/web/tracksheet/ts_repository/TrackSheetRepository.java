package com.web.tracksheet.ts_repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.web.tracksheet.ts_models.TrackSheet;

public interface TrackSheetRepository extends JpaRepository<TrackSheet, Long> {

}
