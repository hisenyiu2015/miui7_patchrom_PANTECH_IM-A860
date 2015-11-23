.class public Landroid/provider/CallLog$CallsEx;
.super Ljava/lang/Object;
.source "CallLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/CallLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallsEx"
.end annotation


# static fields
.field public static final CNAP:Ljava/lang/String; = "cnap"

.field public static final FEATURE:Ljava/lang/String; = "feature"

.field public static final FEATURE_CALL_FORWARDING:I = 0x2

.field public static final FEATURE_FORWARDED_INCOMING:I = 0x4

.field public static final FEATURE_REJECT:I = 0x1

.field public static final FEATURE_SWITCHED_CALL:I = 0x8

.field public static final GROUPLIST:Ljava/lang/String; = "grouplist"

.field public static final GROUPTYPE:Ljava/lang/String; = "grouptype"

.field public static final GROUP_3WAY_TYPE:I = 0x2

.field public static final GROUP_CONFERENCE_TYPE:I = 0x3

.field public static final GROUP_FIRST_TYPE:I = 0x0

.field public static final GROUP_GROUPPLUS_TYPE:I = 0x4

.field public static final GROUP_SECOND_TYPE:I = 0x1

.field public static final IM_TYPE:I = 0x5

.field public static final LINE_NUMBER:Ljava/lang/String; = "line_number"

.field public static final MESSAGE_TYPE:I = 0x1

.field public static final MSGCALL:Ljava/lang/String; = "msgcall"

.field public static final MSGID:Ljava/lang/String; = "msgid"

.field public static final MSGTYPE:Ljava/lang/String; = "msgtype"

.field public static final RECORD:Ljava/lang/String; = "record"

.field public static final REJECT:Ljava/lang/String; = "feature"

.field public static final ROAMING:Ljava/lang/String; = "roaming"

.field public static final TYPE:Ljava/lang/String; = "type_ex"

.field public static final USIM_TYPE:I = 0x6

.field public static final VOICE_TYPE:I = 0x0

.field public static final VOIP_TYPE:I = 0x2

.field public static final VOLTE_TYPE:I = 0x4

.field public static final VTAVAIL:Ljava/lang/String; = "vtavail"

.field public static final VT_TYPE:I = 0x3


# instance fields
.field public mFeature:I

.field public mGroupList:Ljava/lang/String;

.field public mGroupType:I

.field public mLineNumber:Ljava/lang/String;

.field public mMsgCall:I

.field public mMsgID:J

.field public mMsgType:Ljava/lang/String;

.field public mRecord:Ljava/lang/String;

.field public mRoaming:I

.field public mType:I

.field public mVtavail:I


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    const/4 v2, 0x0

    .line 740
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 741
    iput p1, p0, Landroid/provider/CallLog$CallsEx;->mType:I

    .line 742
    iput-object v2, p0, Landroid/provider/CallLog$CallsEx;->mLineNumber:Ljava/lang/String;

    .line 743
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/provider/CallLog$CallsEx;->mMsgID:J

    .line 744
    iput-object v2, p0, Landroid/provider/CallLog$CallsEx;->mMsgType:Ljava/lang/String;

    .line 745
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "feature"    # I

    .prologue
    .line 754
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 755
    iput p1, p0, Landroid/provider/CallLog$CallsEx;->mType:I

    .line 756
    iput p2, p0, Landroid/provider/CallLog$CallsEx;->mFeature:I

    .line 757
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "feature"    # I
    .param p3, "roaming"    # I

    .prologue
    .line 772
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 773
    iput p1, p0, Landroid/provider/CallLog$CallsEx;->mType:I

    .line 774
    iput p2, p0, Landroid/provider/CallLog$CallsEx;->mFeature:I

    .line 775
    iput p3, p0, Landroid/provider/CallLog$CallsEx;->mRoaming:I

    .line 776
    return-void
.end method

.method public constructor <init>(IJLjava/lang/String;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "msgID"    # J
    .param p4, "msgType"    # Ljava/lang/String;

    .prologue
    .line 759
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 760
    iput p1, p0, Landroid/provider/CallLog$CallsEx;->mType:I

    .line 761
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/provider/CallLog$CallsEx;->mLineNumber:Ljava/lang/String;

    .line 762
    iput-wide p2, p0, Landroid/provider/CallLog$CallsEx;->mMsgID:J

    .line 763
    iput-object p4, p0, Landroid/provider/CallLog$CallsEx;->mMsgType:Ljava/lang/String;

    .line 764
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "linenumber"    # Ljava/lang/String;

    .prologue
    .line 747
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 748
    iput p1, p0, Landroid/provider/CallLog$CallsEx;->mType:I

    .line 749
    iput-object p2, p0, Landroid/provider/CallLog$CallsEx;->mLineNumber:Ljava/lang/String;

    .line 750
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/provider/CallLog$CallsEx;->mMsgID:J

    .line 751
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/provider/CallLog$CallsEx;->mMsgType:Ljava/lang/String;

    .line 752
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "linenumber"    # Ljava/lang/String;
    .param p3, "feature"    # I

    .prologue
    .line 766
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 767
    iput p1, p0, Landroid/provider/CallLog$CallsEx;->mType:I

    .line 768
    iput-object p2, p0, Landroid/provider/CallLog$CallsEx;->mLineNumber:Ljava/lang/String;

    .line 769
    iput p3, p0, Landroid/provider/CallLog$CallsEx;->mFeature:I

    .line 770
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;II)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "linenumber"    # Ljava/lang/String;
    .param p3, "feature"    # I
    .param p4, "roaming"    # I

    .prologue
    .line 778
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 779
    iput p1, p0, Landroid/provider/CallLog$CallsEx;->mType:I

    .line 780
    iput-object p2, p0, Landroid/provider/CallLog$CallsEx;->mLineNumber:Ljava/lang/String;

    .line 781
    iput p3, p0, Landroid/provider/CallLog$CallsEx;->mFeature:I

    .line 782
    iput p4, p0, Landroid/provider/CallLog$CallsEx;->mRoaming:I

    .line 783
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;III)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "linenumber"    # Ljava/lang/String;
    .param p3, "feature"    # I
    .param p4, "roaming"    # I
    .param p5, "msgcall"    # I

    .prologue
    .line 785
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 786
    iput p1, p0, Landroid/provider/CallLog$CallsEx;->mType:I

    .line 787
    iput-object p2, p0, Landroid/provider/CallLog$CallsEx;->mLineNumber:Ljava/lang/String;

    .line 788
    iput p3, p0, Landroid/provider/CallLog$CallsEx;->mFeature:I

    .line 789
    iput p4, p0, Landroid/provider/CallLog$CallsEx;->mRoaming:I

    .line 790
    iput p5, p0, Landroid/provider/CallLog$CallsEx;->mMsgCall:I

    .line 791
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IIII)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "linenumber"    # Ljava/lang/String;
    .param p3, "feature"    # I
    .param p4, "roaming"    # I
    .param p5, "msgcall"    # I
    .param p6, "vtavail"    # I

    .prologue
    .line 793
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 794
    iput p1, p0, Landroid/provider/CallLog$CallsEx;->mType:I

    .line 795
    iput-object p2, p0, Landroid/provider/CallLog$CallsEx;->mLineNumber:Ljava/lang/String;

    .line 796
    iput p3, p0, Landroid/provider/CallLog$CallsEx;->mFeature:I

    .line 797
    iput p4, p0, Landroid/provider/CallLog$CallsEx;->mRoaming:I

    .line 798
    iput p5, p0, Landroid/provider/CallLog$CallsEx;->mMsgCall:I

    .line 799
    iput p6, p0, Landroid/provider/CallLog$CallsEx;->mVtavail:I

    .line 800
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IIIILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "linenumber"    # Ljava/lang/String;
    .param p3, "feature"    # I
    .param p4, "roaming"    # I
    .param p5, "msgcall"    # I
    .param p6, "vtavail"    # I
    .param p7, "record"    # Ljava/lang/String;

    .prologue
    .line 816
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 817
    iput p1, p0, Landroid/provider/CallLog$CallsEx;->mType:I

    .line 818
    iput-object p2, p0, Landroid/provider/CallLog$CallsEx;->mLineNumber:Ljava/lang/String;

    .line 819
    iput p3, p0, Landroid/provider/CallLog$CallsEx;->mFeature:I

    .line 820
    iput p4, p0, Landroid/provider/CallLog$CallsEx;->mRoaming:I

    .line 821
    iput p5, p0, Landroid/provider/CallLog$CallsEx;->mMsgCall:I

    .line 822
    iput p6, p0, Landroid/provider/CallLog$CallsEx;->mVtavail:I

    .line 823
    iput-object p7, p0, Landroid/provider/CallLog$CallsEx;->mRecord:Ljava/lang/String;

    .line 824
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IIILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "linenumber"    # Ljava/lang/String;
    .param p3, "feature"    # I
    .param p4, "roaming"    # I
    .param p5, "msgcall"    # I
    .param p6, "record"    # Ljava/lang/String;

    .prologue
    .line 826
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 827
    iput p1, p0, Landroid/provider/CallLog$CallsEx;->mType:I

    .line 828
    iput-object p2, p0, Landroid/provider/CallLog$CallsEx;->mLineNumber:Ljava/lang/String;

    .line 829
    iput p3, p0, Landroid/provider/CallLog$CallsEx;->mFeature:I

    .line 830
    iput p4, p0, Landroid/provider/CallLog$CallsEx;->mRoaming:I

    .line 831
    iput p5, p0, Landroid/provider/CallLog$CallsEx;->mMsgCall:I

    .line 832
    iput-object p6, p0, Landroid/provider/CallLog$CallsEx;->mRecord:Ljava/lang/String;

    .line 833
    return-void
.end method
