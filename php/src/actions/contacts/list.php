<?php

use Helpers\HubspotClientHelper;
use HubSpot\Client\Crm\Contacts\Model\CollectionResponseSimplePublicObjectWithAssociationsForwardPaging;

$hubSpot = HubspotClientHelper::createFactory();

// https://developers.hubspot.com/docs/api/crm/contacts
/** @var CollectionResponseSimplePublicObjectWithAssociationsForwardPaging $contactsPage */
$contactsPage = $hubSpot->crm()->contacts()->basicApi()->getPage();

include __DIR__.'/../../views/contacts/list.php';
