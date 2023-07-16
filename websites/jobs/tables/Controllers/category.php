<?php
namespace tables\Controllers;
class category {
	private $categoryTable;

	public function __construct($categoryTable) {
		$this->categoryTable = $categoryTable;
	}

	public function list() {

		$category = $this->categoryTable->findAll();

		return ['template' => 'categorylist.html.php',
				'title' => 'Category List',
				'variables' => [
						'category' => $category
					]
				];
	}

	public function delete() {
		$this->categoryTable->delete($_POST['id']);

		header('location: /category/list');
	}


    public function home() {
		$category = $this->categoryTable->find('id', 1);

		return ['template' => 'home.html.php',
				'title' => 'category',
				'variables' => [
						'category' => $category[0]
					]
				];
	}


	public function edit() {
		if (isset($_POST['category'])) {

			$this->categoryTable->save($_POST['category']);

			header('location: /category/list');
		}
		else {
			if  (isset($_GET['id'])) {
				$result = $this->categoryTable->find('id', $_GET['id']);
				$category = $result[0];
			}
			else  {
				$category = false;
			}

			return [
				'template' => 'editcategory.html.php',
				'variables' => ['category' => $category],
				'title' => 'Edit Category'
			];
		}
	}
}
