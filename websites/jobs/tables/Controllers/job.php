<?php
namespace tables\Controllers;
class job {
	private $jobTable;

	public function __construct($jobTable, $categoryTable) {
		$this->jobTable = $jobTable;
		$this->categoryTable = $categoryTable;
	}

	public function list() {

		$job = $this->jobTable->findAll();
		$category = $this->categoryTable->findAll();

		return ['template' => 'alljoblist.html.php',
				'title' => 'Job List',
				'variables' => [
						'job' => $job,
						'categoryTable' => $this->categoryTable,
						'category' => $category
					]
				];
	}

	public function delete() {
		$job = $this->jobTable->find('id', $_POST['id'])[0];
	
		if ($job) {
			$archivedJob = [
				'id' => $job['id'],
				'title' => $job['title'],
				'salary' => $job['salary'],
				'categoryId' => $job['categoryId'],
				'archived' => 'yes'
			];
	
			$this->jobTable->save($archivedJob);
		}
	
		header('location: /job/list');
	}
	


	public function home()
	{
		$jobs = $this->jobTable->find('1', '1', 'id', 'ASC', 10);
	
		return [
			'template' => 'home.html.php',
			'title' => 'Jo\'s Jobs - Home',
			'variables' => ['jobs' => $jobs]
		];
	}
	


	public function edit() {
		if (isset($_POST['submit'])) {

			$this->jobTable->save($_POST['job']);

			header('location: /job/list');
		}
		else {
			if  (isset($_GET['id'])) {
				$result = $this->jobTable->find('id', $_GET['id']);
				$job = $result[0];
			}
			else  {
				$job = false;
			}
			$category = $this->categoryTable->findAll();

			return [
				'template' => 'editjob.html.php',
				'variables' => [						
				'job' => $job,
				'categoryTable' => $this->categoryTable,
				'category' => $category],
				'title' => 'Edit job'
			];
		}
	}



	public function job_filter() {
		$categoryId = $_GET['id'];
	
		$job = $this->jobTable->find('categoryId', $categoryId);
		$category = $this->categoryTable->findAll();
	
		return [
			'template' => 'joblist.html.php',
			'title' => 'Job List',
			'variables' => [
				'job' => $job,
				'categoryTable' => $this->categoryTable,
				'category' => $category
			]
		];
	}
	

	public function all_jobs() {

		$job = $this->jobTable->findAllJob();
		$category = $this->categoryTable->findAll();

		return ['template' => 'joblist.html.php',
				'title' => 'Job List',
				'variables' => [
						'job' => $job,
						'categoryTable' => $this->categoryTable,
						'category' => $category
					]
				];
	}


	public function faq(){	
		return [
			'template' => 'faq.html.php',
			'title' => 'FAQs',
			'variables' => [
			]
		];
	}

	public function about(){	
		return [
			'template' => 'about.html.php',
			'title' => 'About Us',
			'variables' => [
			]
		];
	}
}
