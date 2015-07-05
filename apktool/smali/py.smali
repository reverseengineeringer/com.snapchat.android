.class public Lpy;
.super Lth;
.source "SourceFile"

# interfaces
.implements Lts$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpy$a;,
        Lpy$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lth;",
        "Lts$b",
        "<",
        "Lbiz;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final MAX_RETRIES:I = 0x3

.field public static final PATH:Ljava/lang/String; = "/loq/register"

.field public static final SC_SIGNUP_FAILED_EMAIL_EXISTS_CODE:I = -0xc9

.field public static final SC_SIGNUP_FAILED_EMAIL_INVALID_CODE:I = -0xc8

.field public static final SC_SIGNUP_FAILED_PASSWORD_TOO_COMMON_CODE:I = 0x8

.field public static final SC_SIGNUP_FAILED_PASSWORD_TOO_EASY_CODE:I = 0x9

.field public static final SC_SIGNUP_FAILED_PASSWORD_TOO_SHORT_CODE:I = 0x7

.field public static final SC_SIGNUP_FAILED_PASSWORD_TOO_SIMILAR_TO_EMAIL_CODE:I = 0xb

.field public static final SC_SIGNUP_FAILED_PASSWORD_TOO_SIMILAR_TO_USERNAME_CODE:I = 0xa

.field private static final TAG:Ljava/lang/String; = "SignupTask"


# instance fields
.field private mAge:Ljava/lang/String;

.field protected mBirthday:Ljava/lang/String;

.field private final mDeviceTokenManager:Laya;

.field protected final mEmail:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private mNumRetries:I

.field private final mPassword:Ljava/lang/String;

.field private mRetryMillis:J

.field private final mSignupCallback:Lpy$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lpy;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lpy;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/GregorianCalendar;Lpy$b;)V
    .locals 7

    .prologue
    .line 69
    invoke-static {}, Laya;->a()Laya;

    move-result-object v5

    new-instance v6, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lpy;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/GregorianCalendar;Lpy$b;Laya;Landroid/os/Handler;)V

    .line 71
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/GregorianCalendar;Lpy$b;Laya;Landroid/os/Handler;)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x5

    const/4 v6, 0x1

    const/4 v5, 0x2

    .line 75
    invoke-direct {p0}, Lth;-><init>()V

    .line 52
    iput-object v0, p0, Lpy;->mAge:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lpy;->mBirthday:Ljava/lang/String;

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lpy;->mNumRetries:I

    .line 60
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lpy;->mRetryMillis:J

    .line 76
    iput-object p1, p0, Lpy;->mEmail:Ljava/lang/String;

    .line 77
    iput-object p2, p0, Lpy;->mPassword:Ljava/lang/String;

    .line 78
    if-eqz p3, :cond_2

    .line 79
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    new-instance v2, Ljava/util/Locale;

    const-string v3, "en"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v0, p3}, Ljava/text/SimpleDateFormat;->setCalendar(Ljava/util/Calendar;)V

    invoke-virtual {p3}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lpy;->mBirthday:Ljava/lang/String;

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v0, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    invoke-virtual {v0, v7}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    invoke-virtual {p3, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    sub-int v0, v2, v0

    invoke-virtual {p3, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    if-lt v3, v2, :cond_0

    invoke-virtual {p3, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    if-ne v3, v2, :cond_1

    invoke-virtual {p3, v7}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    if-ge v4, v2, :cond_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lpy;->mAge:Ljava/lang/String;

    .line 82
    :cond_2
    iput-object p4, p0, Lpy;->mSignupCallback:Lpy$b;

    .line 83
    iput-object p5, p0, Lpy;->mDeviceTokenManager:Laya;

    .line 84
    iput-object p6, p0, Lpy;->mHandler:Landroid/os/Handler;

    .line 85
    const-class v0, Lbiz;

    invoke-virtual {p0, v0, p0}, Lpy;->a(Ljava/lang/Class;Lts$b;)V

    .line 86
    return-void
.end method

.method static synthetic a(Lpy;)J
    .locals 4

    .prologue
    .line 37
    iget-wide v0, p0, Lpy;->mRetryMillis:J

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lpy;->mRetryMillis:J

    return-wide v0
.end method


# virtual methods
.method final a(Lbiz;Luc;)V
    .locals 3
    .param p1    # Lbiz;
        .annotation build Lcgc;
        .end annotation
    .end param
    .param p2    # Luc;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 169
    if-nez p1, :cond_0

    .line 170
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const v2, 0x7f0c01d0

    invoke-static {v1, v2, v0}, Latx;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 171
    iget-object v1, p0, Lpy;->mSignupCallback:Lpy$b;

    iget v2, p2, Luc;->mResponseCode:I

    invoke-interface {v1, v2, v0}, Lpy$b;->a(ILjava/lang/String;)V

    .line 178
    :goto_0
    return-void

    .line 172
    :cond_0
    invoke-virtual {p1}, Lbiz;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 173
    iget-object v0, p0, Lpy;->mSignupCallback:Lpy$b;

    invoke-virtual {p1}, Lbiz;->e()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Laud;->a(Ljava/lang/Integer;)I

    move-result v1

    invoke-virtual {p1}, Lbiz;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lpy$b;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 176
    :cond_1
    iget-object v0, p0, Lpy;->mSignupCallback:Lpy$b;

    iget-object v1, p0, Lpy;->mEmail:Ljava/lang/String;

    iget-object v2, p0, Lpy;->mBirthday:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Lpy$b;->a(Ljava/lang/String;Ljava/lang/String;Lbiz;)V

    goto :goto_0
.end method

.method public final synthetic a(Ljava/lang/Object;Luc;)V
    .locals 1

    .prologue
    .line 37
    check-cast p1, Lbiz;

    new-instance v0, Lpy$2;

    invoke-direct {v0, p0, p1, p2}, Lpy$2;-><init>(Lpy;Lbiz;Luc;)V

    invoke-static {v0}, Lbgp;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Luc;)V
    .locals 6
    .param p1    # Luc;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 136
    .line 138
    iget v0, p1, Luc;->mResponseCode:I

    const/16 v2, 0x191

    if-ne v0, v2, :cond_1

    .line 139
    iget v0, p0, Lpy;->mNumRetries:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lpy;->mNumRetries:I

    const/4 v2, 0x3

    if-ge v0, v2, :cond_1

    .line 140
    const/4 v0, 0x1

    .line 141
    const-string v2, "SignupTask"

    const-string v3, "Retry signup after receiving SC_UNAUTHORIZED result."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    iget-object v1, p0, Lpy;->mHandler:Landroid/os/Handler;

    new-instance v2, Lpy$1;

    invoke-direct {v2, p0}, Lpy$1;-><init>(Lpy;)V

    iget-wide v4, p0, Lpy;->mRetryMillis:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 152
    :goto_0
    if-nez v0, :cond_0

    .line 153
    invoke-super {p0, p1}, Lth;->a(Luc;)V

    .line 155
    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public final b()Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 102
    new-instance v0, Lpy$a;

    invoke-direct {v0}, Lpy$a;-><init>()V

    .line 103
    sget-boolean v1, Lpy;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lpy$a;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lpy$a;->b()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 105
    :cond_1
    iget-object v1, p0, Lpy;->mEmail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lpy$a;->p(Ljava/lang/String;)V

    .line 106
    iget-object v1, p0, Lpy;->mPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lpy$a;->b(Ljava/lang/String;)V

    .line 107
    iget-object v1, p0, Lpy;->mAge:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lpy$a;->q(Ljava/lang/String;)V

    .line 108
    iget-object v1, p0, Lpy;->mBirthday:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lpy$a;->r(Ljava/lang/String;)V

    .line 110
    invoke-static {}, Llx;->a()Llx;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lpy;->mEmail:Ljava/lang/String;

    aput-object v3, v2, v5

    const/4 v3, 0x1

    iget-object v4, p0, Lpy;->mPassword:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {v0}, Lpy$a;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "/loq/register"

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Llx;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpy$a;->n(Ljava/lang/String;)V

    .line 113
    invoke-static {}, Lajx;->w()Ljava/lang/String;

    move-result-object v1

    .line 114
    if-eqz v1, :cond_2

    .line 115
    invoke-virtual {v0, v1}, Lpy$a;->i(Ljava/lang/String;)V

    .line 118
    :cond_2
    iget-object v1, p0, Lpy;->mDeviceTokenManager:Laya;

    invoke-virtual {v1, v5}, Laya;->a(Z)Laxz;

    move-result-object v1

    .line 119
    if-eqz v1, :cond_4

    iget-object v2, v1, Laxz;->mId:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, v1, Laxz;->mValue:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 120
    iget-object v2, v1, Laxz;->mId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lpy$a;->j(Ljava/lang/String;)V

    .line 121
    iget-object v2, p0, Lpy;->mEmail:Ljava/lang/String;

    iget-object v3, p0, Lpy;->mPassword:Ljava/lang/String;

    invoke-virtual {v0}, Lpy$a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lpy$a;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v2, v3, v4, v5}, Laya;->a(Laxz;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpy$a;->k(Ljava/lang/String;)V

    .line 127
    :goto_0
    invoke-static {}, Lajx;->aE()Ljava/lang/String;

    move-result-object v1

    .line 128
    if-eqz v1, :cond_3

    const-string v2, "{}"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 129
    invoke-virtual {v0, v1}, Lpy$a;->s(Ljava/lang/String;)V

    .line 131
    :cond_3
    return-object v0

    .line 124
    :cond_4
    const-string v1, "1"

    invoke-virtual {v0, v1}, Lpy$a;->l(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    const-string v0, "/loq/register"

    return-object v0
.end method
