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

    public function findAll() 
    {
        $stmt = $this->pdo->prepare('SELECT * FROM ' . $this->table . ''); 
        $stmt->setFetchMode(\PDO::FETCH_CLASS, $this->entityClass, $this->entityConstructor);
        $stmt->execute();
        return $stmt->fetchAll();
    }

    public function findName($value) 
    {
        $stmt = $this->pdo->prepare('SELECT name FROM ' . $this->table . ' WHERE ' . $this->field . ' = :value'); 
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

    public function findAnd($value, $row, $value2) 
    {
        $stmt = $this->pdo->prepare('SELECT * FROM ' . $this->table . ' WHERE ' . $this->field . ' = :value AND ' . $row . '  = :value2'); 
        $criteria = [
            'value' => $value,
            'value2' => $value2
            ];
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

            public function orderby($row) 
            {
            $stmt = $this->pdo->prepare('SELECT * FROM ' . $this->table . ' ORDER BY ' . $row . ' ASC LIMIT 10'); 

            $stmt->execute();
            return $stmt->fetchAll();
            }

        }
?>