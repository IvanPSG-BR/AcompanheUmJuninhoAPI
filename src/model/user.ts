import { User as PrismaUser, ROLE } from '../generated/prisma';

export class User implements PrismaUser {
  id: number;
  createdAt: Date;
  email: string;
  name: string;
  lastname: string;
  password: string;
  role: ROLE;

  constructor(data: PrismaUser) {
    Object.assign(this, data);
  }

  get fullName(): string {
    return `${this.name} ${this.lastname}`;
  }

  isJuninho(): boolean {
    return this.role === 'JUNINHO';
  }

  isMentor(): boolean {
    return this.role === 'MENTOR';
  }
}
