import { Component, OnInit } from '@angular/core';
import { HttpClient, HttpResponse, HttpHeaders } from '@angular/common/http';
import { Observable, of } from 'rxjs';
import { catchError } from 'rxjs/operators';
import { MessageService } from 'primeng/api';
import { Season } from './season.model';
import { SeasonService } from './season.service';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  providers: [MessageService],
  styleUrls: ['./app.component.css']
})
export class AppComponent implements OnInit {

  seasons!: Season[];
  clonedSeasons: { [i: string]: Season; } = {};

  constructor(
    private seasonService: SeasonService,
    private messageService: MessageService
  ) { }

  ngOnInit(): void {
    this.getSeasons();
  }

  getSeasons(): void {
    this.seasonService.getAll().subscribe((seasons) => {
      this.seasons = seasons;
    });
  }

  onRowEditInit(season: Season) {
    this.clonedSeasons[season.id] = { ...season };
  }

  onRowEditSave(season: Season) {
    this.seasonService.save(season)
      .subscribe(
        (data) => {
          this.message('success', 'Success', `Season ${season.number} Saved`);
          delete this.clonedSeasons[season.id];
        },
        (error) => {
          this.message('error', 'Error', `Season ${season.number} Not Saved`);
        }
      );
  }

  isValid(season: Season): boolean {
    return !(!season.number || season.number > 50 || !season.title || !season.location || !season.originalTribe);
  }

  onRowEditCancel(season: Season, index: number) {
    this.seasons[index] = this.clonedSeasons[season.id];
    delete this.clonedSeasons[season.id];
  }

  private message(severity: string, summary: string, detail: string): void {
    this.messageService.add({ severity: severity, summary: summary, detail: detail });
  }
}
