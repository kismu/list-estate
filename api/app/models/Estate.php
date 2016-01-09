<?php

class Estate extends ModelBase
{

    /**
     *
     * @var integer
     */
    protected $id;

    /**
     *
     * @var string
     */
    protected $name;

    /**
     *
     * @var string
     */
    protected $image;

    /**
     *
     * @var string
     */
    protected $builder;

    /**
     *
     * @var string
     */
    protected $location;

    /**
     *
     * @var string
     */
    protected $price;

    /**
     *
     * @var string
     */
    protected $amenities;

    /**
     *
     * @var string
     */
    protected $color;

    /**
     *
     * @var string
     */
    protected $type;

    protected $likes;

    public function getLikes() {
        return $this->likes;
    }

    public function setLikes($likes) {
        $this->likes = $likes;
    }

    /**
     * Method to set the value of field id
     *
     * @param integer $id
     * @return $this
     */
    public function setId($id)
    {
        $this->id = $id;

        return $this;
    }

    /**
     * Method to set the value of field name
     *
     * @param string $name
     * @return $this
     */
    public function setName($name)
    {
        $this->name = $name;

        return $this;
    }

    /**
     * Method to set the value of field image
     *
     * @param string $image
     * @return $this
     */
    public function setImage($image)
    {
        $this->image = $image;

        return $this;
    }

    /**
     * Method to set the value of field builder
     *
     * @param string $builder
     * @return $this
     */
    public function setBuilder($builder)
    {
        $this->builder = $builder;

        return $this;
    }

    /**
     * Method to set the value of field location
     *
     * @param string $location
     * @return $this
     */
    public function setLocation($location)
    {
        $this->location = $location;

        return $this;
    }

    /**
     * Method to set the value of field price
     *
     * @param string $price
     * @return $this
     */
    public function setPrice($price)
    {
        $this->price = $price;

        return $this;
    }

    /**
     * Method to set the value of field amenities
     *
     * @param string $amenities
     * @return $this
     */
    public function setAmenities($amenities)
    {
        $this->amenities = $amenities;

        return $this;
    }

    /**
     * Method to set the value of field color
     *
     * @param string $color
     * @return $this
     */
    public function setColor($color)
    {
        $this->color = $color;

        return $this;
    }

    /**
     * Method to set the value of field type
     *
     * @param string $type
     * @return $this
     */
    public function setType($type)
    {
        $this->type = $type;

        return $this;
    }

    /**
     * Returns the value of field id
     *
     * @return integer
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Returns the value of field name
     *
     * @return string
     */
    public function getName()
    {
        return $this->name;
    }

    /**
     * Returns the value of field image
     *
     * @return string
     */
    public function getImage()
    {
        return $this->image;
    }

    /**
     * Returns the value of field builder
     *
     * @return string
     */
    public function getBuilder()
    {
        return $this->builder;
    }

    /**
     * Returns the value of field location
     *
     * @return string
     */
    public function getLocation()
    {
        return $this->location;
    }

    /**
     * Returns the value of field price
     *
     * @return string
     */
    public function getPrice()
    {
        return $this->price;
    }

    /**
     * Returns the value of field amenities
     *
     * @return string
     */
    public function getAmenities()
    {
        return $this->amenities;
    }

    /**
     * Returns the value of field color
     *
     * @return string
     */
    public function getColor()
    {
        return $this->color;
    }

    /**
     * Returns the value of field type
     *
     * @return string
     */
    public function getType()
    {
        return $this->type;
    }

    /**
     * Initialize method for model.
     */
    public function initialize()
    {
        $this->setSchema("list_estate");
    }

    /**
     * @return Estate[]
     */
    public static function find($parameters = array())
    {
        return parent::find($parameters);
    }

    /**
     * @return Estate
     */
    public static function findFirst($parameters = array())
    {
        return parent::findFirst($parameters);
    }

    /**
     * Independent Column Mapping.
     */
    public function columnMap()
    {
        return array(
            'id' => 'id', 
            'name' => 'name', 
            'image' => 'image', 
            'builder' => 'builder', 
            'location' => 'location', 
            'price' => 'price', 
            'amenities' => 'amenities', 
            'color' => 'color', 
            'type' => 'type',
            'likes' => 'likes'
        );
    }

    public function afterFetch() {
        $this->amenities = json_decode($this->amenities);
        $this->location = json_decode($this->location);
    }

}
