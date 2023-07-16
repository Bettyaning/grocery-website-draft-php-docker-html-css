<?php
namespace tables\Controllers;
class applicants {
	private $applicantsTable;

	public function __construct($applicantsTable) {
		$this->applicantsTable = $applicantsTable;
	}

	public function list() {

		$applicants = $this->applicantsTable->findAll();

		return ['template' => 'applicantslist.html.php',
				'title' => 'applicants List',
				'variables' => [
						'applicants' => $applicants
					]
				];
	}

	public function delete() {
		$this->applicantsTable->delete($_POST['id']);

		header('location: /applicants/list');
	}




	public function edit() {
		if (isset($_POST['applicants'])) {

			$this->applicantsTable->save($_POST['applicants']);

			header('location: /applicants/list');
		}
		else {
			if  (isset($_GET['id'])) {
				$result = $this->applicantsTable->find('id', $_GET['id']);
				$applicants = $result[0];
			}
			else  {
				$applicants = false;
			}

			return [
				'template' => 'editapplicants.html.php',
				'variables' => ['applicants' => $applicants],
				'title' => 'Edit applicants'
			];
		}
	}
}
