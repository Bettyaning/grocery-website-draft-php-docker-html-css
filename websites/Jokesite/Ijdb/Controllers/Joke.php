<?php
namespace Ijdb\Controllers;
class Joke {
	private $jokesTable;

	public function __construct($jokesTable) {
		$this->jokesTable = $jokesTable;
	}

	public function list() {

		$jokes = $this->jokesTable->findAll();

		return ['template' => 'list.html.php',
				'title' => 'Joke List',
				'variables' => [
						'jokes' => $jokes
					]
				];
	}

	public function delete() {
		$this->jokesTable->delete($_POST['id']);

		header('location: /joke/list');
	}

	public function home() {
		$joke = $this->jokesTable->find('id', 1);

		return [
			'template' => 'home.html.php',
			'variables' => ['joke' => $joke],
			'title' => 'Internet Joke Database'
		];

	}

	public function edit() {
		if (isset($_POST['joke'])) {

			$date = new \DateTime();

			$joke = $_POST['joke'];
			$joke['jokedate'] = $date->format('Y-m-d H:i:s');

			$this->jokesTable->save($joke);

			header('location: /joke/list');
		}
		else {
			if  (isset($_GET['id'])) {
				$result = $this->jokesTable->find('id', $_GET['id']);
				$joke = $result[0];
			}
			else  {
				$joke = false;
			}

			return [
				'template' => 'editjoke.html.php',
				'variables' => ['joke' => $joke],
				'title' => 'Edit Joke'
			];
		}
	}
}
