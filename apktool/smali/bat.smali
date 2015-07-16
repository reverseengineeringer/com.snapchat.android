.class public final Lbat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lawj;
.end annotation


# static fields
.field private static final MAX_NUMBER_OF_TIMES_USER_CAN_DISMISS_UPDATE_PROMPT:I = 0x4

.field private static final UIAUTOMATION_HOCKEYAPP_ID:Ljava/lang/String; = "fe3d5bcdca3a16ab1d5d52f9aa97477a"

.field private static sShownUserUpdateDialogCounter:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput v0, Lbat;->sShownUserUpdateDialogCounter:I

    return-void
.end method

.method public static a()V
    .locals 2

    .prologue
    .line 35
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->l()Z

    move-result v0

    if-nez v0, :cond_1

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    const-string v0, "c06b8797877eb662616000c11de0d338"

    const-string v1, "fe3d5bcdca3a16ab1d5d52f9aa97477a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    invoke-static {}, Lbwn;->a()V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 23
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->l()Z

    move-result v0

    if-nez v0, :cond_1

    .line 32
    :cond_0
    :goto_0
    return-void

    .line 27
    :cond_1
    const-string v0, "c06b8797877eb662616000c11de0d338"

    const-string v1, "fe3d5bcdca3a16ab1d5d52f9aa97477a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    const-string v0, "c06b8797877eb662616000c11de0d338"

    invoke-static {p0, v0}, Lbwn;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->l()Z

    move-result v1

    if-nez v1, :cond_0

    .line 58
    :goto_0
    return v0

    .line 51
    :cond_0
    sget v1, Lbat;->sShownUserUpdateDialogCounter:I

    const/4 v2, 0x4

    if-le v1, v2, :cond_1

    .line 52
    sput v0, Lbat;->sShownUserUpdateDialogCounter:I

    .line 53
    const/4 v0, 0x1

    goto :goto_0

    .line 55
    :cond_1
    sget v1, Lbat;->sShownUserUpdateDialogCounter:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lbat;->sShownUserUpdateDialogCounter:I

    goto :goto_0
.end method
