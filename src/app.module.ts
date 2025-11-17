import { Module } from '@nestjs/common';
import { UserRepository } from './repository/user-repository/user-repository';

@Module({
  imports: [],
  controllers: [],
  providers: [UserRepository],
})
export class AppModule {}
