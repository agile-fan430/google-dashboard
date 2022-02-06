import { RouterModule, Routes } from '@angular/router';
import { NgModule } from '@angular/core';

import { PagesComponent } from './pages.component';
import { DashboardComponent } from './dashboard/dashboard.component';
import { AccountsComponent } from './apple/accounts/accounts.component';
import { AlbumsComponent } from './apple/albums/albums.component';
import { TracksComponent } from './apple/tracks/tracks.component';
import { ArtistsComponent } from './apple/artists/artists.component';
import { SettingComponent } from './setting/setting.component';
import { LogsComponent } from './apple/logs/logs.component';
import { LibraryComponent } from './library/library.component';
import { CardComponent } from './card/card.component';
import { CouponComponent } from './coupon/coupon.component';
import { ServerComponent } from './server/server.component';
import { AnalyticsComponent } from './analytics/analytics.component';

const routes: Routes = [{
  path: '',
  component: PagesComponent,
  children: [
    {
      path: 'dashboard',
      component: DashboardComponent,
    },
    {
      path: 'accounts',
      component: AccountsComponent,
    },
    {
      path: 'albums',
      component: AlbumsComponent,
    },
    {
      path: 'tracks',
      component: TracksComponent,
    },
    {
      path: 'artists',
      component: ArtistsComponent,
    },
    {
      path: 'library',
      component: LibraryComponent,
    },
    {
      path: 'servers',
      component: ServerComponent
    },
    {
      path: 'coupons',
      component: CouponComponent
    },
    {
      path: 'settings',
      component: SettingComponent,
    },
    {
      path: 'logs',
      component: LogsComponent,
    },
    {
      path: 'analytics',
      component: AnalyticsComponent
    },
    {
      path: '',
      redirectTo: 'dashboard',
      pathMatch: 'full',
    },
  ],
}];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule],
})
export class PagesRoutingModule {
}
