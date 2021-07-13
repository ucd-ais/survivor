import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { map } from 'rxjs/operators';
import { Season } from './season.model';

@Injectable({
  providedIn: 'root'
})
export class SeasonService {

  constructor(private http: HttpClient) { }

  getAll(): Observable<Season[]> {
    return this.http.get<Season[]>("/seasons").pipe(map(seasons => seasons.sort((x, y) => y.number - x.number)));
  }

  save(season: Season): Observable<Season> {
    return this.http.post<Season>("/seasons", season);
  }
}
