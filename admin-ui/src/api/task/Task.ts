export type Task = {
  createdAt: Date;
  description: string | null;
  dueDate: Date;
  id: string;
  status?: "Option1" | null;
  title: string | null;
  updatedAt: Date;
};
