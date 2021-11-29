import Sortable from 'sortablejs';

const initSortable = () => {
  const list = document.querySelector('.task-grid');
  if (list){
    Sortable.create(list);
  };
};

export { initSortable };
