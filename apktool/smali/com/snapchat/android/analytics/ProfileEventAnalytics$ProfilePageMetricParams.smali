.class public final enum Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/analytics/ProfileEventAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProfilePageMetricParams"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

.field public static final enum CONTACT_INFO:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

.field public static final enum CONTACT_NAME:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

.field public static final enum DISPLAY_NAME:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

.field public static final enum FRIEND:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

.field public static final enum HAS_PICTURE:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

.field public static final enum IDENTITY_CELL_INDEX:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

.field public static final enum IDENTITY_PROFILE_PAGE:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

.field public static final enum IN_MY_CONTACTS:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

.field public static final enum LAST_TAKEN_TIMESTAMP:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

.field public static final enum REASON:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

.field public static final enum SOURCE:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

.field public static final enum STATUS:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 176
    new-instance v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

    const-string v1, "DISPLAY_NAME"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->DISPLAY_NAME:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

    .line 177
    new-instance v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

    const-string v1, "IDENTITY_CELL_INDEX"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->IDENTITY_CELL_INDEX:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

    .line 178
    new-instance v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

    const-string v1, "FRIEND"

    invoke-direct {v0, v1, v5}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->FRIEND:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

    .line 179
    new-instance v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

    const-string v1, "STATUS"

    invoke-direct {v0, v1, v6}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->STATUS:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

    .line 180
    new-instance v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

    const-string v1, "REASON"

    invoke-direct {v0, v1, v7}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->REASON:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

    .line 181
    new-instance v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

    const-string v1, "IDENTITY_PROFILE_PAGE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->IDENTITY_PROFILE_PAGE:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

    .line 182
    new-instance v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

    const-string v1, "SOURCE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->SOURCE:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

    .line 183
    new-instance v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

    const-string v1, "CONTACT_NAME"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->CONTACT_NAME:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

    .line 184
    new-instance v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

    const-string v1, "CONTACT_INFO"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->CONTACT_INFO:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

    .line 185
    new-instance v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

    const-string v1, "IN_MY_CONTACTS"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->IN_MY_CONTACTS:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

    .line 186
    new-instance v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

    const-string v1, "LAST_TAKEN_TIMESTAMP"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->LAST_TAKEN_TIMESTAMP:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

    .line 187
    new-instance v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

    const-string v1, "HAS_PICTURE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->HAS_PICTURE:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

    .line 175
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->DISPLAY_NAME:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->IDENTITY_CELL_INDEX:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->FRIEND:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->STATUS:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

    aput-object v1, v0, v6

    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->REASON:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->IDENTITY_PROFILE_PAGE:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->SOURCE:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->CONTACT_NAME:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->CONTACT_INFO:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->IN_MY_CONTACTS:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->LAST_TAKEN_TIMESTAMP:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->HAS_PICTURE:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

    aput-object v2, v0, v1

    sput-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->$VALUES:[Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 175
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;
    .locals 1

    .prologue
    .line 175
    const-class v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;
    .locals 1

    .prologue
    .line 175
    sget-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->$VALUES:[Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

    invoke-virtual {v0}, [Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

    return-object v0
.end method


# virtual methods
.method public final nameInLowerCase()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    invoke-static {p0}, Lath;->a(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
