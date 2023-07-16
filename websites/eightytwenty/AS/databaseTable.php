<?php
namespace AS;
class DatabaseTable {
    
    private $table;
    private $pdo;
    private $field;
    private $entityClass;
    private $entityConstructor;

    public function __construct($pdo, $table, $field, $entityClass = 'stdclass', $entityConstructor = []) 
    {
    $this->pdo = $pdo;
    $this->table = $table;
    $this->field = $field;
    $this->entityClass = $entityClass;
    $this->entityConstructor = $entityConstructor;
    }

    public function find($value) 
    {
    $stmt = $this->pdo->prepare('SELECT * FROM ' . $this->table .' WHERE ' . $this->field . ' = :value');
    $stmt->setFetchMode(\PDO::FETCH_CLASS, $this->entityClass, $this->entityConstructor);
    $criteria = [
    'value' => $value
    ];
        $stmt->execute($criteria);
        return $stmt->fetchAll();
    }

    public function findS($row, $value) 
    {
    $stmt = $this->pdo->prepare('SELECT ' . $row . ' FROM ' . $this->table .' WHERE ' . $this->field . ' = :value');
    
    $criteria = [
    'value' => $value
    ];
        $stmt->execute($criteria);
        return $stmt->fetch();
    }
    public function search($row, $row1, $value) 
    {
$stmt = $this->pdo->prepare('SELECT * FROM ' . $this->table .' WHERE ' . $row . ' LIKE :value OR ' . $row1 . ' LIKE :value');
$stmt->setFetchMode(\PDO::FETCH_CLASS, $this->entityClass, $this->entityConstructor);
$criteria = [
'value' => $value
];
    $stmt->execute($criteria);
    return $stmt->fetchAll();
    }

    public function findWhere($row, $where, $value) 
    {
    $stmt = $this->pdo->prepare('SELECT ' . $row . ' FROM ' . $this->table .' WHERE ' . $where . ' = :value');
    
    $criteria = [
    'value' => $value
    ];
        $stmt->execute($criteria);
        return $stmt->fetch();
    }

    public function findAllWhere($where, $value) 
    {
    $stmt = $this->pdo->prepare('SELECT * FROM ' . $this->table .' WHERE ' . $where . ' = :value');
    $stmt->setFetchMode(\PDO::FETCH_CLASS, $this->entityClass, $this->entityConstructor);
    $criteria = [
    'value' => $value
    ];
        $stmt->execute($criteria);
        return $stmt->fetch();
    }

    public function findAllWhere2($where, $value, $value2) 
    {
        $stmt = $this->pdo->prepare('SELECT * FROM ' . $this->table .' WHERE ' . $where . ' <> :value AND ' . $where . ' <> :value2');

    $stmt->setFetchMode(\PDO::FETCH_CLASS, $this->entityClass, $this->entityConstructor);
    $criteria = [
    'value' => $value,
    'value2' => $value2
    ];
        $stmt->execute($criteria);
        return $stmt->fetchAll();
    }

    public function findAllWhere3($where, $value, $value2) 
    {
        $stmt = $this->pdo->prepare('SELECT * FROM ' . $this->table .' WHERE ' . $where . ' = :value OR ' . $where . ' = :value2');

    $stmt->setFetchMode(\PDO::FETCH_CLASS, $this->entityClass, $this->entityConstructor);
    $criteria = [
    'value' => $value,
    'value2' => $value2
    ];
        $stmt->execute($criteria);
        return $stmt->fetchAll();
    }

    public function findAll() 
    {
        $stmt = $this->pdo->prepare('SELECT * FROM ' . $this->table . ''); 
        $stmt->setFetchMode(\PDO::FETCH_CLASS, $this->entityClass, $this->entityConstructor);
        $stmt->execute();
        return $stmt->fetchAll();
    }

    public function findName($value) 
    {
        $stmt = $this->pdo->prepare('SELECT category_name FROM ' . $this->table . ' WHERE ' . $this->field . ' = :value'); 
        $criteria = [
            'value' => $value
            ];
        $stmt->execute($criteria);
        return $stmt->fetch();
    }

    public function findLocation($value) 
    {
        $stmt = $this->pdo->prepare('SELECT DISTINCT location FROM ' . $this->table . ' WHERE ' . $this->field . ' = :value AND status = 1'); 
        $criteria = [
            'value' => $value
            ];
        $stmt->execute($criteria);
        return $stmt->fetchAll();
    }

    public function findAnd($value, $value1, $row, $row1) 
    {
        $stmt = $this->pdo->prepare('SELECT * FROM ' . $this->table . ' WHERE ' . $row . ' = :value AND ' . $row1 . '  = :value1'); 
        $criteria = [
            'value' => $value,
            'value1' => $value1
            ];
            $stmt->setFetchMode(\PDO::FETCH_CLASS, $this->entityClass, $this->entityConstructor);
            $stmt->execute($criteria);
            return $stmt->fetchAll();
    }

    public function count($value) 
    {
    $stmt = $this->pdo->prepare('SELECT COUNT(*) FROM ' . $this->table .' WHERE ' . $this->field . ' = :value'); 
    $criteria = [
    'value' => $value
    ];
        $stmt->execute($criteria);
        return $stmt->fetchAll();
    }

    public function delete($value) {
		$stmt = $this->pdo->prepare('DELETE FROM ' . $this->table . ' WHERE ' . $this->field . ' = :value');
		$criteria = [
			'value' => $value
		];
		$stmt->execute($criteria);
	}

    public function insert($record) 
     {
        $keys = array_keys($record);
        $values = implode(', ', $keys);
        $valuesWithColon = implode(', :', $keys);
        
        $query = 'INSERT INTO ' . $this->table . ' (' . $values . ') VALUES (:' . $valuesWithColon . ')';
        $stmt = $this->pdo->prepare($query);
        $stmt->execute($record);
    }

    public function update($record) { 

        $query = 'UPDATE ' . $this->table . ' SET ';
        
                 $parameters = [];
        
                 foreach ($record as $key => $value) {
        
                        $parameters[] = $key . ' = :' .$key;
        }
        
                 $query .= implode(', ', $parameters);
                 $query .= ' WHERE ' . $this->field . ' = :field';
        
                 $record['field'] = $record[$this->field];
                 $stmt = $this->pdo->prepare($query);
                 $stmt->execute($record);
        }

        public function save($record) {
            try {
            if (empty($record[$this->field]))
            {
                unset($record[$this->field]);
            }
            $this->insert($record);
            }
            catch (\Exception $e) {
            $this->update($record);
            }
            }

            public function last($selected, $row) 
            {
            $stmt = $this->pdo->prepare('SELECT ' . $selected . ' FROM ' . $this->table . ' ORDER BY ' . $row . ' DESC LIMIT 1'); 

            $stmt->execute();
        return $stmt->fetch();
            }

            public function limit() 
            {
            $stmt = $this->pdo->prepare('SELECT * FROM ' . $this->table . ' ORDER BY ' . $this->field . ' DESC LIMIT 3'); 
            $stmt->setFetchMode(\PDO::FETCH_CLASS, $this->entityClass, $this->entityConstructor);
            $stmt->execute();
            return $stmt->fetchAll();
            }

        }
?>