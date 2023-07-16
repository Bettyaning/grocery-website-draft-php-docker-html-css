<?php
namespace tables\Controllers;
class enquires {
	private $enquiresTable;

	public function __construct($enquiresTable) {
		$this->enquiresTable = $enquiresTable;
	}

	public function list() {

		$enquires = $this->enquiresTable->findAll();

		return ['template' => 'enquireslist.html.php',
				'title' => 'enquires List',
				'variables' => [
						'enquires' => $enquires
					]
				];
	}

	public function delete() {
		$this->enquiresTable->delete($_POST['id']);

		header('location: /enquires/list');
	}


    public function home() {
		$enquires = $this->enquiresTable->find('id', 1);

		return ['template' => 'home.html.php',
				'title' => 'enquires',
				'variables' => [
						'enquires' => $enquires[0]
					]
				];
	}


	public function edit() {
		if (isset($_POST['enquires'])) {

			$this->enquiresTable->save($_POST['enquires']);

			header('location: /enquires/list');
		}
		else {
			if  (isset($_GET['id'])) {
				$result = $this->enquiresTable->find('id', $_GET['id']);
				$enquires = $result[0];
			}
			else  {
				$enquires = false;
			}

			return [
				'template' => 'editenquires.html.php',
				'variables' => ['enquires' => $enquires],
				'title' => 'Edit enquires'
			];
		}
	}



	public function enquiry() {
		if (isset($_POST['enquires'])) {

			$this->enquiresTable->save($_POST['enquires']);

			header('location: /enquires/enquiry');
		}
		else {
			if  (isset($_GET['id'])) {
				$result = $this->enquiresTable->find('id', $_GET['id']);
				$enquires = $result[0];
			}
			else  {
				$enquires = false;
			}

			return [
				'template' => 'contact.html.php',
				'variables' => ['enquires' => $enquires],
				'title' => 'Edit enquires'
			];
		}
	}
}
