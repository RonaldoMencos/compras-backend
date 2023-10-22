import type { Schema, Attribute } from '@strapi/strapi';

export interface AdminPermission extends Schema.CollectionType {
  collectionName: 'admin_permissions';
  info: {
    name: 'Permission';
    description: '';
    singularName: 'permission';
    pluralName: 'permissions';
    displayName: 'Permission';
  };
  pluginOptions: {
    'content-manager': {
      visible: false;
    };
    'content-type-builder': {
      visible: false;
    };
  };
  attributes: {
    action: Attribute.String &
      Attribute.Required &
      Attribute.SetMinMaxLength<{
        minLength: 1;
      }>;
    actionParameters: Attribute.JSON & Attribute.DefaultTo<{}>;
    subject: Attribute.String &
      Attribute.SetMinMaxLength<{
        minLength: 1;
      }>;
    properties: Attribute.JSON & Attribute.DefaultTo<{}>;
    conditions: Attribute.JSON & Attribute.DefaultTo<[]>;
    role: Attribute.Relation<'admin::permission', 'manyToOne', 'admin::role'>;
    createdAt: Attribute.DateTime;
    updatedAt: Attribute.DateTime;
    createdBy: Attribute.Relation<
      'admin::permission',
      'oneToOne',
      'admin::user'
    > &
      Attribute.Private;
    updatedBy: Attribute.Relation<
      'admin::permission',
      'oneToOne',
      'admin::user'
    > &
      Attribute.Private;
  };
}

export interface AdminUser extends Schema.CollectionType {
  collectionName: 'admin_users';
  info: {
    name: 'User';
    description: '';
    singularName: 'user';
    pluralName: 'users';
    displayName: 'User';
  };
  pluginOptions: {
    'content-manager': {
      visible: false;
    };
    'content-type-builder': {
      visible: false;
    };
  };
  attributes: {
    firstname: Attribute.String &
      Attribute.SetMinMaxLength<{
        minLength: 1;
      }>;
    lastname: Attribute.String &
      Attribute.SetMinMaxLength<{
        minLength: 1;
      }>;
    username: Attribute.String;
    email: Attribute.Email &
      Attribute.Required &
      Attribute.Private &
      Attribute.Unique &
      Attribute.SetMinMaxLength<{
        minLength: 6;
      }>;
    password: Attribute.Password &
      Attribute.Private &
      Attribute.SetMinMaxLength<{
        minLength: 6;
      }>;
    resetPasswordToken: Attribute.String & Attribute.Private;
    registrationToken: Attribute.String & Attribute.Private;
    isActive: Attribute.Boolean &
      Attribute.Private &
      Attribute.DefaultTo<false>;
    roles: Attribute.Relation<'admin::user', 'manyToMany', 'admin::role'> &
      Attribute.Private;
    blocked: Attribute.Boolean & Attribute.Private & Attribute.DefaultTo<false>;
    preferedLanguage: Attribute.String;
    createdAt: Attribute.DateTime;
    updatedAt: Attribute.DateTime;
    createdBy: Attribute.Relation<'admin::user', 'oneToOne', 'admin::user'> &
      Attribute.Private;
    updatedBy: Attribute.Relation<'admin::user', 'oneToOne', 'admin::user'> &
      Attribute.Private;
  };
}

export interface AdminRole extends Schema.CollectionType {
  collectionName: 'admin_roles';
  info: {
    name: 'Role';
    description: '';
    singularName: 'role';
    pluralName: 'roles';
    displayName: 'Role';
  };
  pluginOptions: {
    'content-manager': {
      visible: false;
    };
    'content-type-builder': {
      visible: false;
    };
  };
  attributes: {
    name: Attribute.String &
      Attribute.Required &
      Attribute.Unique &
      Attribute.SetMinMaxLength<{
        minLength: 1;
      }>;
    code: Attribute.String &
      Attribute.Required &
      Attribute.Unique &
      Attribute.SetMinMaxLength<{
        minLength: 1;
      }>;
    description: Attribute.String;
    users: Attribute.Relation<'admin::role', 'manyToMany', 'admin::user'>;
    permissions: Attribute.Relation<
      'admin::role',
      'oneToMany',
      'admin::permission'
    >;
    createdAt: Attribute.DateTime;
    updatedAt: Attribute.DateTime;
    createdBy: Attribute.Relation<'admin::role', 'oneToOne', 'admin::user'> &
      Attribute.Private;
    updatedBy: Attribute.Relation<'admin::role', 'oneToOne', 'admin::user'> &
      Attribute.Private;
  };
}

export interface AdminApiToken extends Schema.CollectionType {
  collectionName: 'strapi_api_tokens';
  info: {
    name: 'Api Token';
    singularName: 'api-token';
    pluralName: 'api-tokens';
    displayName: 'Api Token';
    description: '';
  };
  pluginOptions: {
    'content-manager': {
      visible: false;
    };
    'content-type-builder': {
      visible: false;
    };
  };
  attributes: {
    name: Attribute.String &
      Attribute.Required &
      Attribute.Unique &
      Attribute.SetMinMaxLength<{
        minLength: 1;
      }>;
    description: Attribute.String &
      Attribute.SetMinMaxLength<{
        minLength: 1;
      }> &
      Attribute.DefaultTo<''>;
    type: Attribute.Enumeration<['read-only', 'full-access', 'custom']> &
      Attribute.Required &
      Attribute.DefaultTo<'read-only'>;
    accessKey: Attribute.String &
      Attribute.Required &
      Attribute.SetMinMaxLength<{
        minLength: 1;
      }>;
    lastUsedAt: Attribute.DateTime;
    permissions: Attribute.Relation<
      'admin::api-token',
      'oneToMany',
      'admin::api-token-permission'
    >;
    expiresAt: Attribute.DateTime;
    lifespan: Attribute.BigInteger;
    createdAt: Attribute.DateTime;
    updatedAt: Attribute.DateTime;
    createdBy: Attribute.Relation<
      'admin::api-token',
      'oneToOne',
      'admin::user'
    > &
      Attribute.Private;
    updatedBy: Attribute.Relation<
      'admin::api-token',
      'oneToOne',
      'admin::user'
    > &
      Attribute.Private;
  };
}

export interface AdminApiTokenPermission extends Schema.CollectionType {
  collectionName: 'strapi_api_token_permissions';
  info: {
    name: 'API Token Permission';
    description: '';
    singularName: 'api-token-permission';
    pluralName: 'api-token-permissions';
    displayName: 'API Token Permission';
  };
  pluginOptions: {
    'content-manager': {
      visible: false;
    };
    'content-type-builder': {
      visible: false;
    };
  };
  attributes: {
    action: Attribute.String &
      Attribute.Required &
      Attribute.SetMinMaxLength<{
        minLength: 1;
      }>;
    token: Attribute.Relation<
      'admin::api-token-permission',
      'manyToOne',
      'admin::api-token'
    >;
    createdAt: Attribute.DateTime;
    updatedAt: Attribute.DateTime;
    createdBy: Attribute.Relation<
      'admin::api-token-permission',
      'oneToOne',
      'admin::user'
    > &
      Attribute.Private;
    updatedBy: Attribute.Relation<
      'admin::api-token-permission',
      'oneToOne',
      'admin::user'
    > &
      Attribute.Private;
  };
}

export interface AdminTransferToken extends Schema.CollectionType {
  collectionName: 'strapi_transfer_tokens';
  info: {
    name: 'Transfer Token';
    singularName: 'transfer-token';
    pluralName: 'transfer-tokens';
    displayName: 'Transfer Token';
    description: '';
  };
  pluginOptions: {
    'content-manager': {
      visible: false;
    };
    'content-type-builder': {
      visible: false;
    };
  };
  attributes: {
    name: Attribute.String &
      Attribute.Required &
      Attribute.Unique &
      Attribute.SetMinMaxLength<{
        minLength: 1;
      }>;
    description: Attribute.String &
      Attribute.SetMinMaxLength<{
        minLength: 1;
      }> &
      Attribute.DefaultTo<''>;
    accessKey: Attribute.String &
      Attribute.Required &
      Attribute.SetMinMaxLength<{
        minLength: 1;
      }>;
    lastUsedAt: Attribute.DateTime;
    permissions: Attribute.Relation<
      'admin::transfer-token',
      'oneToMany',
      'admin::transfer-token-permission'
    >;
    expiresAt: Attribute.DateTime;
    lifespan: Attribute.BigInteger;
    createdAt: Attribute.DateTime;
    updatedAt: Attribute.DateTime;
    createdBy: Attribute.Relation<
      'admin::transfer-token',
      'oneToOne',
      'admin::user'
    > &
      Attribute.Private;
    updatedBy: Attribute.Relation<
      'admin::transfer-token',
      'oneToOne',
      'admin::user'
    > &
      Attribute.Private;
  };
}

export interface AdminTransferTokenPermission extends Schema.CollectionType {
  collectionName: 'strapi_transfer_token_permissions';
  info: {
    name: 'Transfer Token Permission';
    description: '';
    singularName: 'transfer-token-permission';
    pluralName: 'transfer-token-permissions';
    displayName: 'Transfer Token Permission';
  };
  pluginOptions: {
    'content-manager': {
      visible: false;
    };
    'content-type-builder': {
      visible: false;
    };
  };
  attributes: {
    action: Attribute.String &
      Attribute.Required &
      Attribute.SetMinMaxLength<{
        minLength: 1;
      }>;
    token: Attribute.Relation<
      'admin::transfer-token-permission',
      'manyToOne',
      'admin::transfer-token'
    >;
    createdAt: Attribute.DateTime;
    updatedAt: Attribute.DateTime;
    createdBy: Attribute.Relation<
      'admin::transfer-token-permission',
      'oneToOne',
      'admin::user'
    > &
      Attribute.Private;
    updatedBy: Attribute.Relation<
      'admin::transfer-token-permission',
      'oneToOne',
      'admin::user'
    > &
      Attribute.Private;
  };
}

export interface PluginUploadFile extends Schema.CollectionType {
  collectionName: 'files';
  info: {
    singularName: 'file';
    pluralName: 'files';
    displayName: 'File';
    description: '';
  };
  pluginOptions: {
    'content-manager': {
      visible: false;
    };
    'content-type-builder': {
      visible: false;
    };
  };
  attributes: {
    name: Attribute.String & Attribute.Required;
    alternativeText: Attribute.String;
    caption: Attribute.String;
    width: Attribute.Integer;
    height: Attribute.Integer;
    formats: Attribute.JSON;
    hash: Attribute.String & Attribute.Required;
    ext: Attribute.String;
    mime: Attribute.String & Attribute.Required;
    size: Attribute.Decimal & Attribute.Required;
    url: Attribute.String & Attribute.Required;
    previewUrl: Attribute.String;
    provider: Attribute.String & Attribute.Required;
    provider_metadata: Attribute.JSON;
    related: Attribute.Relation<'plugin::upload.file', 'morphToMany'>;
    folder: Attribute.Relation<
      'plugin::upload.file',
      'manyToOne',
      'plugin::upload.folder'
    > &
      Attribute.Private;
    folderPath: Attribute.String &
      Attribute.Required &
      Attribute.Private &
      Attribute.SetMinMax<{
        min: 1;
      }>;
    createdAt: Attribute.DateTime;
    updatedAt: Attribute.DateTime;
    createdBy: Attribute.Relation<
      'plugin::upload.file',
      'oneToOne',
      'admin::user'
    > &
      Attribute.Private;
    updatedBy: Attribute.Relation<
      'plugin::upload.file',
      'oneToOne',
      'admin::user'
    > &
      Attribute.Private;
  };
}

export interface PluginUploadFolder extends Schema.CollectionType {
  collectionName: 'upload_folders';
  info: {
    singularName: 'folder';
    pluralName: 'folders';
    displayName: 'Folder';
  };
  pluginOptions: {
    'content-manager': {
      visible: false;
    };
    'content-type-builder': {
      visible: false;
    };
  };
  attributes: {
    name: Attribute.String &
      Attribute.Required &
      Attribute.SetMinMax<{
        min: 1;
      }>;
    pathId: Attribute.Integer & Attribute.Required & Attribute.Unique;
    parent: Attribute.Relation<
      'plugin::upload.folder',
      'manyToOne',
      'plugin::upload.folder'
    >;
    children: Attribute.Relation<
      'plugin::upload.folder',
      'oneToMany',
      'plugin::upload.folder'
    >;
    files: Attribute.Relation<
      'plugin::upload.folder',
      'oneToMany',
      'plugin::upload.file'
    >;
    path: Attribute.String &
      Attribute.Required &
      Attribute.SetMinMax<{
        min: 1;
      }>;
    createdAt: Attribute.DateTime;
    updatedAt: Attribute.DateTime;
    createdBy: Attribute.Relation<
      'plugin::upload.folder',
      'oneToOne',
      'admin::user'
    > &
      Attribute.Private;
    updatedBy: Attribute.Relation<
      'plugin::upload.folder',
      'oneToOne',
      'admin::user'
    > &
      Attribute.Private;
  };
}

export interface PluginI18NLocale extends Schema.CollectionType {
  collectionName: 'i18n_locale';
  info: {
    singularName: 'locale';
    pluralName: 'locales';
    collectionName: 'locales';
    displayName: 'Locale';
    description: '';
  };
  options: {
    draftAndPublish: false;
  };
  pluginOptions: {
    'content-manager': {
      visible: false;
    };
    'content-type-builder': {
      visible: false;
    };
  };
  attributes: {
    name: Attribute.String &
      Attribute.SetMinMax<{
        min: 1;
        max: 50;
      }>;
    code: Attribute.String & Attribute.Unique;
    createdAt: Attribute.DateTime;
    updatedAt: Attribute.DateTime;
    createdBy: Attribute.Relation<
      'plugin::i18n.locale',
      'oneToOne',
      'admin::user'
    > &
      Attribute.Private;
    updatedBy: Attribute.Relation<
      'plugin::i18n.locale',
      'oneToOne',
      'admin::user'
    > &
      Attribute.Private;
  };
}

export interface PluginUsersPermissionsPermission
  extends Schema.CollectionType {
  collectionName: 'up_permissions';
  info: {
    name: 'permission';
    description: '';
    singularName: 'permission';
    pluralName: 'permissions';
    displayName: 'Permission';
  };
  pluginOptions: {
    'content-manager': {
      visible: false;
    };
    'content-type-builder': {
      visible: false;
    };
  };
  attributes: {
    action: Attribute.String & Attribute.Required;
    role: Attribute.Relation<
      'plugin::users-permissions.permission',
      'manyToOne',
      'plugin::users-permissions.role'
    >;
    createdAt: Attribute.DateTime;
    updatedAt: Attribute.DateTime;
    createdBy: Attribute.Relation<
      'plugin::users-permissions.permission',
      'oneToOne',
      'admin::user'
    > &
      Attribute.Private;
    updatedBy: Attribute.Relation<
      'plugin::users-permissions.permission',
      'oneToOne',
      'admin::user'
    > &
      Attribute.Private;
  };
}

export interface PluginUsersPermissionsRole extends Schema.CollectionType {
  collectionName: 'up_roles';
  info: {
    name: 'role';
    description: '';
    singularName: 'role';
    pluralName: 'roles';
    displayName: 'Role';
  };
  pluginOptions: {
    'content-manager': {
      visible: false;
    };
    'content-type-builder': {
      visible: false;
    };
  };
  attributes: {
    name: Attribute.String &
      Attribute.Required &
      Attribute.SetMinMaxLength<{
        minLength: 3;
      }>;
    description: Attribute.String;
    type: Attribute.String & Attribute.Unique;
    permissions: Attribute.Relation<
      'plugin::users-permissions.role',
      'oneToMany',
      'plugin::users-permissions.permission'
    >;
    users: Attribute.Relation<
      'plugin::users-permissions.role',
      'oneToMany',
      'plugin::users-permissions.user'
    >;
    createdAt: Attribute.DateTime;
    updatedAt: Attribute.DateTime;
    createdBy: Attribute.Relation<
      'plugin::users-permissions.role',
      'oneToOne',
      'admin::user'
    > &
      Attribute.Private;
    updatedBy: Attribute.Relation<
      'plugin::users-permissions.role',
      'oneToOne',
      'admin::user'
    > &
      Attribute.Private;
  };
}

export interface PluginUsersPermissionsUser extends Schema.CollectionType {
  collectionName: 'up_users';
  info: {
    name: 'user';
    description: '';
    singularName: 'user';
    pluralName: 'users';
    displayName: 'User';
  };
  options: {
    draftAndPublish: false;
    timestamps: true;
  };
  attributes: {
    username: Attribute.String &
      Attribute.Required &
      Attribute.Unique &
      Attribute.SetMinMaxLength<{
        minLength: 3;
      }>;
    email: Attribute.Email &
      Attribute.Required &
      Attribute.SetMinMaxLength<{
        minLength: 6;
      }>;
    provider: Attribute.String;
    password: Attribute.Password &
      Attribute.Private &
      Attribute.SetMinMaxLength<{
        minLength: 6;
      }>;
    resetPasswordToken: Attribute.String & Attribute.Private;
    confirmationToken: Attribute.String & Attribute.Private;
    confirmed: Attribute.Boolean & Attribute.DefaultTo<false>;
    blocked: Attribute.Boolean & Attribute.DefaultTo<false>;
    role: Attribute.Relation<
      'plugin::users-permissions.user',
      'manyToOne',
      'plugin::users-permissions.role'
    >;
    createdAt: Attribute.DateTime;
    updatedAt: Attribute.DateTime;
    createdBy: Attribute.Relation<
      'plugin::users-permissions.user',
      'oneToOne',
      'admin::user'
    > &
      Attribute.Private;
    updatedBy: Attribute.Relation<
      'plugin::users-permissions.user',
      'oneToOne',
      'admin::user'
    > &
      Attribute.Private;
  };
}

export interface ApiContraseniaPagoContraseniaPago
  extends Schema.CollectionType {
  collectionName: 'contrasenia_pagos';
  info: {
    singularName: 'contrasenia-pago';
    pluralName: 'contrasenia-pagos';
    displayName: 'contrasenia_pago';
  };
  options: {
    draftAndPublish: true;
  };
  attributes: {
    factura: Attribute.String;
    fecha_factura: Attribute.Date;
    cuotas: Attribute.Integer;
    pago: Attribute.Decimal;
    orden_compra: Attribute.Relation<
      'api::contrasenia-pago.contrasenia-pago',
      'oneToOne',
      'api::orden-compra.orden-compra'
    >;
    createdAt: Attribute.DateTime;
    updatedAt: Attribute.DateTime;
    publishedAt: Attribute.DateTime;
    createdBy: Attribute.Relation<
      'api::contrasenia-pago.contrasenia-pago',
      'oneToOne',
      'admin::user'
    > &
      Attribute.Private;
    updatedBy: Attribute.Relation<
      'api::contrasenia-pago.contrasenia-pago',
      'oneToOne',
      'admin::user'
    > &
      Attribute.Private;
  };
}

export interface ApiCotizacionCompraCotizacionCompra
  extends Schema.CollectionType {
  collectionName: 'cotizacion_compras';
  info: {
    singularName: 'cotizacion-compra';
    pluralName: 'cotizacion-compras';
    displayName: 'cotizacion_compra';
  };
  options: {
    draftAndPublish: true;
  };
  attributes: {
    fecha_creacion: Attribute.Date;
    adjunto: Attribute.Media;
    total: Attribute.Decimal;
    seleccionada: Attribute.Boolean;
    solicitud_compra: Attribute.Relation<
      'api::cotizacion-compra.cotizacion-compra',
      'oneToOne',
      'api::solicitud-compra.solicitud-compra'
    >;
    proveedor: Attribute.Relation<
      'api::cotizacion-compra.cotizacion-compra',
      'oneToOne',
      'api::proveedor.proveedor'
    >;
    createdAt: Attribute.DateTime;
    updatedAt: Attribute.DateTime;
    publishedAt: Attribute.DateTime;
    createdBy: Attribute.Relation<
      'api::cotizacion-compra.cotizacion-compra',
      'oneToOne',
      'admin::user'
    > &
      Attribute.Private;
    updatedBy: Attribute.Relation<
      'api::cotizacion-compra.cotizacion-compra',
      'oneToOne',
      'admin::user'
    > &
      Attribute.Private;
  };
}

export interface ApiDepartamentoDepartamento extends Schema.CollectionType {
  collectionName: 'departamentos';
  info: {
    singularName: 'departamento';
    pluralName: 'departamentos';
    displayName: 'departamento';
  };
  options: {
    draftAndPublish: true;
  };
  attributes: {
    nombre: Attribute.String & Attribute.Required;
    ubicacion: Attribute.String & Attribute.Required;
    createdAt: Attribute.DateTime;
    updatedAt: Attribute.DateTime;
    publishedAt: Attribute.DateTime;
    createdBy: Attribute.Relation<
      'api::departamento.departamento',
      'oneToOne',
      'admin::user'
    > &
      Attribute.Private;
    updatedBy: Attribute.Relation<
      'api::departamento.departamento',
      'oneToOne',
      'admin::user'
    > &
      Attribute.Private;
  };
}

export interface ApiEmpleadoEmpleado extends Schema.CollectionType {
  collectionName: 'empleados';
  info: {
    singularName: 'empleado';
    pluralName: 'empleados';
    displayName: 'empleado';
  };
  options: {
    draftAndPublish: true;
  };
  attributes: {
    nombres: Attribute.String & Attribute.Required;
    apellidos: Attribute.String & Attribute.Required;
    telefono: Attribute.String & Attribute.Required;
    correo: Attribute.Email & Attribute.Required;
    departamento: Attribute.Relation<
      'api::empleado.empleado',
      'oneToOne',
      'api::departamento.departamento'
    >;
    createdAt: Attribute.DateTime;
    updatedAt: Attribute.DateTime;
    publishedAt: Attribute.DateTime;
    createdBy: Attribute.Relation<
      'api::empleado.empleado',
      'oneToOne',
      'admin::user'
    > &
      Attribute.Private;
    updatedBy: Attribute.Relation<
      'api::empleado.empleado',
      'oneToOne',
      'admin::user'
    > &
      Attribute.Private;
  };
}

export interface ApiOrdenCompraOrdenCompra extends Schema.CollectionType {
  collectionName: 'orden_compras';
  info: {
    singularName: 'orden-compra';
    pluralName: 'orden-compras';
    displayName: 'orden_compra';
    description: '';
  };
  options: {
    draftAndPublish: true;
  };
  attributes: {
    fecha_creacion: Attribute.Date;
    cotizacion_compra: Attribute.Relation<
      'api::orden-compra.orden-compra',
      'oneToOne',
      'api::cotizacion-compra.cotizacion-compra'
    >;
    orden_compra_estado: Attribute.Relation<
      'api::orden-compra.orden-compra',
      'oneToOne',
      'api::orden-compra-estado.orden-compra-estado'
    >;
    monto: Attribute.Decimal;
    createdAt: Attribute.DateTime;
    updatedAt: Attribute.DateTime;
    publishedAt: Attribute.DateTime;
    createdBy: Attribute.Relation<
      'api::orden-compra.orden-compra',
      'oneToOne',
      'admin::user'
    > &
      Attribute.Private;
    updatedBy: Attribute.Relation<
      'api::orden-compra.orden-compra',
      'oneToOne',
      'admin::user'
    > &
      Attribute.Private;
  };
}

export interface ApiOrdenCompraDevolucionOrdenCompraDevolucion
  extends Schema.CollectionType {
  collectionName: 'orden_compra_devolucions';
  info: {
    singularName: 'orden-compra-devolucion';
    pluralName: 'orden-compra-devolucions';
    displayName: 'orden_compra_devolucion';
  };
  options: {
    draftAndPublish: true;
  };
  attributes: {
    fecha_creacion: Attribute.Date;
    detalle: Attribute.String;
    orden_compra: Attribute.Relation<
      'api::orden-compra-devolucion.orden-compra-devolucion',
      'oneToOne',
      'api::orden-compra.orden-compra'
    >;
    createdAt: Attribute.DateTime;
    updatedAt: Attribute.DateTime;
    publishedAt: Attribute.DateTime;
    createdBy: Attribute.Relation<
      'api::orden-compra-devolucion.orden-compra-devolucion',
      'oneToOne',
      'admin::user'
    > &
      Attribute.Private;
    updatedBy: Attribute.Relation<
      'api::orden-compra-devolucion.orden-compra-devolucion',
      'oneToOne',
      'admin::user'
    > &
      Attribute.Private;
  };
}

export interface ApiOrdenCompraEstadoOrdenCompraEstado
  extends Schema.CollectionType {
  collectionName: 'orden_compra_estados';
  info: {
    singularName: 'orden-compra-estado';
    pluralName: 'orden-compra-estados';
    displayName: 'orden_compra_estado';
  };
  options: {
    draftAndPublish: true;
  };
  attributes: {
    nombre: Attribute.String & Attribute.Required;
    createdAt: Attribute.DateTime;
    updatedAt: Attribute.DateTime;
    publishedAt: Attribute.DateTime;
    createdBy: Attribute.Relation<
      'api::orden-compra-estado.orden-compra-estado',
      'oneToOne',
      'admin::user'
    > &
      Attribute.Private;
    updatedBy: Attribute.Relation<
      'api::orden-compra-estado.orden-compra-estado',
      'oneToOne',
      'admin::user'
    > &
      Attribute.Private;
  };
}

export interface ApiOrdenCompraRecepcionOrdenCompraRecepcion
  extends Schema.CollectionType {
  collectionName: 'orden_compra_recepcions';
  info: {
    singularName: 'orden-compra-recepcion';
    pluralName: 'orden-compra-recepcions';
    displayName: 'orden_compra_recepcion';
    description: '';
  };
  options: {
    draftAndPublish: true;
  };
  attributes: {
    fecha_creacion: Attribute.Date;
    detalle: Attribute.Text;
    orden_compra: Attribute.Relation<
      'api::orden-compra-recepcion.orden-compra-recepcion',
      'oneToOne',
      'api::orden-compra.orden-compra'
    >;
    ord_compra_recepcion_estado: Attribute.Relation<
      'api::orden-compra-recepcion.orden-compra-recepcion',
      'oneToOne',
      'api::orden-compra-recepcion-estado.orden-compra-recepcion-estado'
    >;
    createdAt: Attribute.DateTime;
    updatedAt: Attribute.DateTime;
    publishedAt: Attribute.DateTime;
    createdBy: Attribute.Relation<
      'api::orden-compra-recepcion.orden-compra-recepcion',
      'oneToOne',
      'admin::user'
    > &
      Attribute.Private;
    updatedBy: Attribute.Relation<
      'api::orden-compra-recepcion.orden-compra-recepcion',
      'oneToOne',
      'admin::user'
    > &
      Attribute.Private;
  };
}

export interface ApiOrdenCompraRecepcionEstadoOrdenCompraRecepcionEstado
  extends Schema.CollectionType {
  collectionName: 'orden_compra_recepcion_estados';
  info: {
    singularName: 'orden-compra-recepcion-estado';
    pluralName: 'orden-compra-recepcion-estados';
    displayName: 'ord_compra_recepcion_estado';
    description: '';
  };
  options: {
    draftAndPublish: true;
  };
  attributes: {
    nombre: Attribute.String;
    createdAt: Attribute.DateTime;
    updatedAt: Attribute.DateTime;
    publishedAt: Attribute.DateTime;
    createdBy: Attribute.Relation<
      'api::orden-compra-recepcion-estado.orden-compra-recepcion-estado',
      'oneToOne',
      'admin::user'
    > &
      Attribute.Private;
    updatedBy: Attribute.Relation<
      'api::orden-compra-recepcion-estado.orden-compra-recepcion-estado',
      'oneToOne',
      'admin::user'
    > &
      Attribute.Private;
  };
}

export interface ApiProductoProducto extends Schema.CollectionType {
  collectionName: 'productos';
  info: {
    singularName: 'producto';
    pluralName: 'productos';
    displayName: 'producto';
  };
  options: {
    draftAndPublish: true;
  };
  attributes: {
    nombre: Attribute.String & Attribute.Required;
    marca: Attribute.String & Attribute.Required;
    producto_categoria: Attribute.Relation<
      'api::producto.producto',
      'oneToOne',
      'api::producto-categoria.producto-categoria'
    >;
    createdAt: Attribute.DateTime;
    updatedAt: Attribute.DateTime;
    publishedAt: Attribute.DateTime;
    createdBy: Attribute.Relation<
      'api::producto.producto',
      'oneToOne',
      'admin::user'
    > &
      Attribute.Private;
    updatedBy: Attribute.Relation<
      'api::producto.producto',
      'oneToOne',
      'admin::user'
    > &
      Attribute.Private;
  };
}

export interface ApiProductoCategoriaProductoCategoria
  extends Schema.CollectionType {
  collectionName: 'producto_categorias';
  info: {
    singularName: 'producto-categoria';
    pluralName: 'producto-categorias';
    displayName: 'producto_categoria';
  };
  options: {
    draftAndPublish: true;
  };
  attributes: {
    nombre: Attribute.String & Attribute.Required;
    createdAt: Attribute.DateTime;
    updatedAt: Attribute.DateTime;
    publishedAt: Attribute.DateTime;
    createdBy: Attribute.Relation<
      'api::producto-categoria.producto-categoria',
      'oneToOne',
      'admin::user'
    > &
      Attribute.Private;
    updatedBy: Attribute.Relation<
      'api::producto-categoria.producto-categoria',
      'oneToOne',
      'admin::user'
    > &
      Attribute.Private;
  };
}

export interface ApiProveedorProveedor extends Schema.CollectionType {
  collectionName: 'proveedors';
  info: {
    singularName: 'proveedor';
    pluralName: 'proveedors';
    displayName: 'proveedor';
  };
  options: {
    draftAndPublish: true;
  };
  attributes: {
    nombre_fiscal: Attribute.String;
    direccion: Attribute.String;
    nit: Attribute.String;
    telefono: Attribute.String;
    proveedor_categoria: Attribute.Relation<
      'api::proveedor.proveedor',
      'oneToOne',
      'api::proveedor-categoria.proveedor-categoria'
    >;
    createdAt: Attribute.DateTime;
    updatedAt: Attribute.DateTime;
    publishedAt: Attribute.DateTime;
    createdBy: Attribute.Relation<
      'api::proveedor.proveedor',
      'oneToOne',
      'admin::user'
    > &
      Attribute.Private;
    updatedBy: Attribute.Relation<
      'api::proveedor.proveedor',
      'oneToOne',
      'admin::user'
    > &
      Attribute.Private;
  };
}

export interface ApiProveedorCategoriaProveedorCategoria
  extends Schema.CollectionType {
  collectionName: 'proveedor_categorias';
  info: {
    singularName: 'proveedor-categoria';
    pluralName: 'proveedor-categorias';
    displayName: 'proveedor_categoria';
  };
  options: {
    draftAndPublish: true;
  };
  attributes: {
    nombre: Attribute.String;
    createdAt: Attribute.DateTime;
    updatedAt: Attribute.DateTime;
    publishedAt: Attribute.DateTime;
    createdBy: Attribute.Relation<
      'api::proveedor-categoria.proveedor-categoria',
      'oneToOne',
      'admin::user'
    > &
      Attribute.Private;
    updatedBy: Attribute.Relation<
      'api::proveedor-categoria.proveedor-categoria',
      'oneToOne',
      'admin::user'
    > &
      Attribute.Private;
  };
}

export interface ApiProveedorContactoProveedorContacto
  extends Schema.CollectionType {
  collectionName: 'proveedor_contactos';
  info: {
    singularName: 'proveedor-contacto';
    pluralName: 'proveedor-contactos';
    displayName: 'proveedor_contacto';
  };
  options: {
    draftAndPublish: true;
  };
  attributes: {
    nombre: Attribute.String;
    direccion: Attribute.String;
    cui: Attribute.String;
    telefono: Attribute.String;
    correo: Attribute.Email;
    proveedor: Attribute.Relation<
      'api::proveedor-contacto.proveedor-contacto',
      'oneToOne',
      'api::proveedor.proveedor'
    >;
    createdAt: Attribute.DateTime;
    updatedAt: Attribute.DateTime;
    publishedAt: Attribute.DateTime;
    createdBy: Attribute.Relation<
      'api::proveedor-contacto.proveedor-contacto',
      'oneToOne',
      'admin::user'
    > &
      Attribute.Private;
    updatedBy: Attribute.Relation<
      'api::proveedor-contacto.proveedor-contacto',
      'oneToOne',
      'admin::user'
    > &
      Attribute.Private;
  };
}

export interface ApiSolicitudCompraSolicitudCompra
  extends Schema.CollectionType {
  collectionName: 'solicitud_compras';
  info: {
    singularName: 'solicitud-compra';
    pluralName: 'solicitud-compras';
    displayName: 'solicitud_compra';
  };
  options: {
    draftAndPublish: true;
  };
  attributes: {
    solicitante: Attribute.Relation<
      'api::solicitud-compra.solicitud-compra',
      'oneToOne',
      'api::empleado.empleado'
    >;
    aprobador_jefe: Attribute.Relation<
      'api::solicitud-compra.solicitud-compra',
      'oneToOne',
      'api::empleado.empleado'
    >;
    aprobador_gerente: Attribute.Relation<
      'api::solicitud-compra.solicitud-compra',
      'oneToOne',
      'api::empleado.empleado'
    >;
    fecha_creacion: Attribute.Date;
    total: Attribute.Decimal;
    solicitud_compra_estado: Attribute.Relation<
      'api::solicitud-compra.solicitud-compra',
      'oneToOne',
      'api::solicitud-compra-estado.solicitud-compra-estado'
    >;
    createdAt: Attribute.DateTime;
    updatedAt: Attribute.DateTime;
    publishedAt: Attribute.DateTime;
    createdBy: Attribute.Relation<
      'api::solicitud-compra.solicitud-compra',
      'oneToOne',
      'admin::user'
    > &
      Attribute.Private;
    updatedBy: Attribute.Relation<
      'api::solicitud-compra.solicitud-compra',
      'oneToOne',
      'admin::user'
    > &
      Attribute.Private;
  };
}

export interface ApiSolicitudCompraDetalleSolicitudCompraDetalle
  extends Schema.CollectionType {
  collectionName: 'solicitud_compra_detalles';
  info: {
    singularName: 'solicitud-compra-detalle';
    pluralName: 'solicitud-compra-detalles';
    displayName: 'solicitud_compra_detalle';
  };
  options: {
    draftAndPublish: true;
  };
  attributes: {
    solicitud_compra: Attribute.Relation<
      'api::solicitud-compra-detalle.solicitud-compra-detalle',
      'oneToOne',
      'api::solicitud-compra.solicitud-compra'
    >;
    producto: Attribute.Relation<
      'api::solicitud-compra-detalle.solicitud-compra-detalle',
      'oneToOne',
      'api::producto.producto'
    >;
    cantidad: Attribute.Integer;
    createdAt: Attribute.DateTime;
    updatedAt: Attribute.DateTime;
    publishedAt: Attribute.DateTime;
    createdBy: Attribute.Relation<
      'api::solicitud-compra-detalle.solicitud-compra-detalle',
      'oneToOne',
      'admin::user'
    > &
      Attribute.Private;
    updatedBy: Attribute.Relation<
      'api::solicitud-compra-detalle.solicitud-compra-detalle',
      'oneToOne',
      'admin::user'
    > &
      Attribute.Private;
  };
}

export interface ApiSolicitudCompraEstadoSolicitudCompraEstado
  extends Schema.CollectionType {
  collectionName: 'solicitud_compra_estados';
  info: {
    singularName: 'solicitud-compra-estado';
    pluralName: 'solicitud-compra-estados';
    displayName: 'solicitud_compra_estado';
  };
  options: {
    draftAndPublish: true;
  };
  attributes: {
    nombre: Attribute.String & Attribute.Required;
    createdAt: Attribute.DateTime;
    updatedAt: Attribute.DateTime;
    publishedAt: Attribute.DateTime;
    createdBy: Attribute.Relation<
      'api::solicitud-compra-estado.solicitud-compra-estado',
      'oneToOne',
      'admin::user'
    > &
      Attribute.Private;
    updatedBy: Attribute.Relation<
      'api::solicitud-compra-estado.solicitud-compra-estado',
      'oneToOne',
      'admin::user'
    > &
      Attribute.Private;
  };
}

declare module '@strapi/types' {
  export module Shared {
    export interface ContentTypes {
      'admin::permission': AdminPermission;
      'admin::user': AdminUser;
      'admin::role': AdminRole;
      'admin::api-token': AdminApiToken;
      'admin::api-token-permission': AdminApiTokenPermission;
      'admin::transfer-token': AdminTransferToken;
      'admin::transfer-token-permission': AdminTransferTokenPermission;
      'plugin::upload.file': PluginUploadFile;
      'plugin::upload.folder': PluginUploadFolder;
      'plugin::i18n.locale': PluginI18NLocale;
      'plugin::users-permissions.permission': PluginUsersPermissionsPermission;
      'plugin::users-permissions.role': PluginUsersPermissionsRole;
      'plugin::users-permissions.user': PluginUsersPermissionsUser;
      'api::contrasenia-pago.contrasenia-pago': ApiContraseniaPagoContraseniaPago;
      'api::cotizacion-compra.cotizacion-compra': ApiCotizacionCompraCotizacionCompra;
      'api::departamento.departamento': ApiDepartamentoDepartamento;
      'api::empleado.empleado': ApiEmpleadoEmpleado;
      'api::orden-compra.orden-compra': ApiOrdenCompraOrdenCompra;
      'api::orden-compra-devolucion.orden-compra-devolucion': ApiOrdenCompraDevolucionOrdenCompraDevolucion;
      'api::orden-compra-estado.orden-compra-estado': ApiOrdenCompraEstadoOrdenCompraEstado;
      'api::orden-compra-recepcion.orden-compra-recepcion': ApiOrdenCompraRecepcionOrdenCompraRecepcion;
      'api::orden-compra-recepcion-estado.orden-compra-recepcion-estado': ApiOrdenCompraRecepcionEstadoOrdenCompraRecepcionEstado;
      'api::producto.producto': ApiProductoProducto;
      'api::producto-categoria.producto-categoria': ApiProductoCategoriaProductoCategoria;
      'api::proveedor.proveedor': ApiProveedorProveedor;
      'api::proveedor-categoria.proveedor-categoria': ApiProveedorCategoriaProveedorCategoria;
      'api::proveedor-contacto.proveedor-contacto': ApiProveedorContactoProveedorContacto;
      'api::solicitud-compra.solicitud-compra': ApiSolicitudCompraSolicitudCompra;
      'api::solicitud-compra-detalle.solicitud-compra-detalle': ApiSolicitudCompraDetalleSolicitudCompraDetalle;
      'api::solicitud-compra-estado.solicitud-compra-estado': ApiSolicitudCompraEstadoSolicitudCompraEstado;
    }
  }
}
