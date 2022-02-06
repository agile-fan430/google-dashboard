import { NgModule } from '@angular/core';
import { NbMenuModule } from '@nebular/theme';

import { ThemeModule } from '../@theme/theme.module';
import { PagesComponent } from './pages.component';
import { DashboardModule } from './dashboard/dashboard.module';
import { PagesRoutingModule } from './pages-routing.module';
import { AccountsModule } from './apple/accounts/accounts.module';
import { AlbumsModule } from './apple/albums/albums.module';
import { TracksModule } from './apple/tracks/tracks.module';
import { ArtistsModule } from './apple/artists/artists.module';
import { SettingModule } from './setting/setting.module';
import { LogsModule } from './apple/logs/logs.module';
import { LibraryModule } from './library/library.module';
import { CardModule } from './card/card.module';
import { CouponModule } from './coupon/coupon.module';
import { ServerModule } from './server/server.module';
import { AnalyticsModule } from './analytics/analytics.module';

@NgModule({
  imports: [
    PagesRoutingModule,
    ThemeModule,
    NbMenuModule,
    DashboardModule,
    AccountsModule,
    AlbumsModule,
    TracksModule,
    ArtistsModule,
    SettingModule,
    LogsModule,
    LibraryModule,
    CardModule,
    CouponModule,
    ServerModule,
    AnalyticsModule
  ],
  declarations: [
    PagesComponent,
  ],
})
export class PagesModule {
}
