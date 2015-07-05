.class public final Latr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CHANGE_EMAIL_KEY:Ljava/lang/String; = "change_email_key"

.field public static final CHANGE_EMAIL_MESSAGE_KEY:Ljava/lang/String; = "change_email_message_key"

.field public static final ENABLE_RED_GEAR_PHONE_FEATURE:Z = false

.field public static final RECOVERY_CODE_MESSAGE_KEY:Ljava/lang/String; = "recovery_code_message_key"

.field public static final RECOVERY_CODE_SUCCEED_KEY:Ljava/lang/String; = "recovery_code_succeed_key"


# instance fields
.field private mUserPrefs:Lajx;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-static {}, Lajx;->a()Lajx;

    move-result-object v0

    invoke-direct {p0, v0}, Latr;-><init>(Lajx;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Lajx;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Latr;->mUserPrefs:Lajx;

    .line 23
    return-void
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lajx;->x()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lajx;->x()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Lajx;->G()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lajx;->bm()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lajx;->bn()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
