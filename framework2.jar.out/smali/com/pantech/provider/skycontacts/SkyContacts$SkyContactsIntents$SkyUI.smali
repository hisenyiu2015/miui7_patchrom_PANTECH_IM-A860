.class public final Lcom/pantech/provider/skycontacts/SkyContacts$SkyContactsIntents$SkyUI;
.super Ljava/lang/Object;
.source "SkyContacts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/provider/skycontacts/SkyContacts$SkyContactsIntents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SkyUI"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/provider/skycontacts/SkyContacts$SkyContactsIntents$SkyUI$SkyTabState;
    }
.end annotation


# static fields
.field public static final ACCOUNT_GROUP_ID_EXTRA_KEY:Ljava/lang/String; = "com.pantech.app.contacts.extra.ACCOUNT_GROUP_ID"

.field public static final ACCOUNT_NAME_EXTRA_KEY:Ljava/lang/String; = "com.pantech.app.contacts.extra.ACCOUNT_NAME"

.field public static final ACCOUNT_TYPE_EXTRA_KEY:Ljava/lang/String; = "com.pantech.app.contacts.extra.ACCOUNT_TYPE"

.field public static final ACTION_SELECTION_MULTI_PICKER:Ljava/lang/String; = "com.pantech.app.contacts.action.SELECTION_MULTI_PICKER"

.field public static final ACTION_SELECTION_PICKER_DELETE:Ljava/lang/String; = "com.pantech.app.contacts.action.SELECTION_PICKER_DELETE"

.field public static final ADD_TO_EXISTING_CONTACT:Ljava/lang/String; = "com.pantech.app.contacts.action.ADD_TO_EXISTING_CONTACT"

.field public static final DIRECT_SAVE_REQ_KEY:Ljava/lang/String; = "directSave"

.field public static final GROUP_ID_EXTRA_KEY:Ljava/lang/String; = "com.pantech.app.contacts.extra.GROUP_ID"

.field public static final GROUP_PICK_MODE_KEY:Ljava/lang/String; = "com.pantech.app.contacts.action.GROUP_PICK_MODE_KEY"

.field public static final LIST_ACCOUNT_GROUP_ACTION:Ljava/lang/String; = "com.pantech.app.contacts.action.LIST_ACCOUNT_GROUP_ACTION"

.field public static final LIST_ACCOUNT_GROUP_MEMBER_ACTION:Ljava/lang/String; = "com.pantech.app.contacts.action.LIST_ACCOUNT_GROUP_MEMBER"

.field public static final LIST_CHECK_VIEW:Ljava/lang/String; = "com.pantech.app.contacts.action.LIST_CHECK_VIEW"

.field public static final LIST_DEFAULT:Ljava/lang/String; = "com.pantech.app.contacts.action.LIST_DEFAULT"

.field public static final LIST_GROUP_ACTION:Ljava/lang/String; = "com.pantech.app.contacts.action.LIST_GROUP"

.field public static final LIST_GROUP_MEMBER_ACTION:Ljava/lang/String; = "com.pantech.app.contacts.action.LIST_GROUP_MEMBER"

.field public static final MULTI_PICK_REQ_EXCLUDE_GROUP_KEY:Ljava/lang/String; = "excludeGroup"

.field public static final MULTI_PICK_REQ_MAX_COUNT_KEY:Ljava/lang/String; = "maxCount"

.field public static final MULTI_PICK_REQ_MODE_KEY:Ljava/lang/String; = "multicheck"

.field public static final MULTI_PICK_REQ_SEARCH_GROUP_KEY:Ljava/lang/String; = "searchByGroup"

.field public static final MULTI_PICK_RESULT_KEY:Ljava/lang/String; = "pickedItems"

.field public static final MULTI_PICK_RES_CONTACT_ID_KEY:Ljava/lang/String; = "contact_id"

.field public static final MULTI_PICK_RES_EMAIL_ID_KEY:Ljava/lang/String; = "email_id"

.field public static final MULTI_PICK_RES_EMAIL_VALUE_KEY:Ljava/lang/String; = "email"

.field public static final MULTI_PICK_RES_IS_EMAIL_KEY:Ljava/lang/String; = "isEmail"

.field public static final MULTI_PICK_RES_NAME_KEY:Ljava/lang/String; = "name"

.field public static final MULTI_PICK_RES_PHONE_ID_KEY:Ljava/lang/String; = "phone_id"

.field public static final MULTI_PICK_RES_PHONE_VALUE_KEY:Ljava/lang/String; = "phone"

.field public static final MULTI_PICK_RES_RAW_CONTACT_ID_KEY:Ljava/lang/String; = "raw_contact_id"

.field public static final OVERWRITE_EXISTING_CONTACT:Ljava/lang/String; = "com.pantech.app.contacts.action.OVERWRITE_EXISTING_CONTACT"

.field public static final PHONE_AND_EMAIL_TYPE:Ljava/lang/String; = "vnd.pantech.cursor.dir/phone_and_email"

.field public static final SELECTION_MULTI_PICK_RESULT_KEY:Ljava/lang/String; = "selectionpickedItems"

.field public static final SELECT_RECIPIENT_ACTION:Ljava/lang/String; = "com.pantech.app.contacts.action.SELECT_RECIPIENT"

.field public static final SORT_GROUP_ACTION:Ljava/lang/String; = "com.pantech.app.contacts.action.SORT_GROUP"

.field public static final SPEED_DIAL_ACTION:Ljava/lang/String; = "com.pantech.app.contacts.action.SPEED_DIAL"

.field public static final SPEED_DIAL_INSERT_ACTION:Ljava/lang/String; = "com.pantech.app.contacts.action.SPEED_DIAL_INSERT"

.field public static final SPEED_DIAL_INSERT_LISTTYPE_ACTION:Ljava/lang/String; = "com.pantech.app.contacts.action.SPEED_DIAL_INSERT_LISTTYPE"

.field public static final SPEED_DIAL_INSERT_TEMP_ACTION:Ljava/lang/String; = "com.pantech.app.contacts.action.SPEED_DIAL_INSERT_TEMP"

.field public static final SPEED_DIAL_INSERT_TEMP_LISTTYPE_ACTION:Ljava/lang/String; = "com.pantech.app.contacts.action.SPEED_DIAL_INSERT_TEMP_LISTTYPE"

.field public static final SPEED_DIAL_LISTTYPE_ACTION:Ljava/lang/String; = "com.pantech.app.contacts.action.SPEED_DIAL_LISTTYPE"

.field public static final TAB_TO_OPEN:Ljava/lang/String; = "tabToOpen"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 588
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 766
    return-void
.end method
