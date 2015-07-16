.class public Lqo;
.super Ltx;
.source "SourceFile"

# interfaces
.implements Lui$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqo$a;,
        Lqo$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ltx;",
        "Lui$b",
        "<",
        "Lbka;",
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

.field private final mDeviceTokenManager:Layy;

.field protected final mEmail:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private mNumRetries:I

.field private final mPassword:Ljava/lang/String;

.field private mRetryMillis:J

.field private final mSignupCallback:Lqo$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lqo;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lqo;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/GregorianCalendar;Lqo$b;)V
    .locals 7

    .prologue
    .line 69
    invoke-static {}, Layy;->a()Layy;

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

    invoke-direct/range {v0 .. v6}, Lqo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/GregorianCalendar;Lqo$b;Layy;Landroid/os/Handler;)V

    .line 71
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/GregorianCalendar;Lqo$b;Layy;Landroid/os/Handler;)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x5

    const/4 v6, 0x1

    const/4 v5, 0x2

    .line 75
    invoke-direct {p0}, Ltx;-><init>()V

    .line 52
    iput-object v0, p0, Lqo;->mAge:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lqo;->mBirthday:Ljava/lang/String;

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lqo;->mNumRetries:I

    .line 60
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lqo;->mRetryMillis:J

    .line 76
    iput-object p1, p0, Lqo;->mEmail:Ljava/lang/String;

    .line 77
    iput-object p2, p0, Lqo;->mPassword:Ljava/lang/String;

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

    iput-object v0, p0, Lqo;->mBirthday:Ljava/lang/String;

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

    iput-object v0, p0, Lqo;->mAge:Ljava/lang/String;

    .line 82
    :cond_2
    iput-object p4, p0, Lqo;->mSignupCallback:Lqo$b;

    .line 83
    iput-object p5, p0, Lqo;->mDeviceTokenManager:Layy;

    .line 84
    iput-object p6, p0, Lqo;->mHandler:Landroid/os/Handler;

    .line 85
    const-class v0, Lbka;

    invoke-virtual {p0, v0, p0}, Lqo;->registerCallback(Ljava/lang/Class;Lui$b;)V

    .line 86
    return-void
.end method

.method static synthetic a(Lqo;)J
    .locals 4

    .prologue
    .line 37
    iget-wide v0, p0, Lqo;->mRetryMillis:J

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lqo;->mRetryMillis:J

    return-wide v0
.end method


# virtual methods
.method final a(Lbka;Lus;)V
    .locals 3
    .param p1    # Lbka;
        .annotation build Lchd;
        .end annotation
    .end param
    .param p2    # Lus;
        .annotation build Lchc;
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

    invoke-static {v1, v2, v0}, Lauv;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 171
    iget-object v1, p0, Lqo;->mSignupCallback:Lqo$b;

    iget v2, p2, Lus;->mResponseCode:I

    invoke-interface {v1, v2, v0}, Lqo$b;->a(ILjava/lang/String;)V

    .line 178
    :goto_0
    return-void

    .line 172
    :cond_0
    invoke-virtual {p1}, Lbka;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 173
    iget-object v0, p0, Lqo;->mSignupCallback:Lqo$b;

    invoke-virtual {p1}, Lbka;->e()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lavb;->a(Ljava/lang/Integer;)I

    move-result v1

    invoke-virtual {p1}, Lbka;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lqo$b;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 176
    :cond_1
    iget-object v0, p0, Lqo;->mSignupCallback:Lqo$b;

    iget-object v1, p0, Lqo;->mEmail:Ljava/lang/String;

    iget-object v2, p0, Lqo;->mBirthday:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Lqo$b;->a(Ljava/lang/String;Ljava/lang/String;Lbka;)V

    goto :goto_0
.end method

.method protected getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    const-string v0, "/loq/register"

    return-object v0
.end method

.method public getRequestPayload()Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 102
    new-instance v0, Lqo$a;

    invoke-direct {v0}, Lqo$a;-><init>()V

    .line 103
    sget-boolean v1, Lqo;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lqo$a;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lqo$a;->b()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 105
    :cond_1
    iget-object v1, p0, Lqo;->mEmail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lqo$a;->p(Ljava/lang/String;)V

    .line 106
    iget-object v1, p0, Lqo;->mPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lqo$a;->b(Ljava/lang/String;)V

    .line 107
    iget-object v1, p0, Lqo;->mAge:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lqo$a;->q(Ljava/lang/String;)V

    .line 108
    iget-object v1, p0, Lqo;->mBirthday:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lqo$a;->r(Ljava/lang/String;)V

    .line 110
    invoke-static {}, Lmp;->a()Lmp;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lqo;->mEmail:Ljava/lang/String;

    aput-object v3, v2, v5

    const/4 v3, 0x1

    iget-object v4, p0, Lqo;->mPassword:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {v0}, Lqo$a;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "/loq/register"

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lmp;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lqo$a;->n(Ljava/lang/String;)V

    .line 113
    invoke-static {}, Lakr;->w()Ljava/lang/String;

    move-result-object v1

    .line 114
    if-eqz v1, :cond_2

    .line 115
    invoke-virtual {v0, v1}, Lqo$a;->i(Ljava/lang/String;)V

    .line 118
    :cond_2
    iget-object v1, p0, Lqo;->mDeviceTokenManager:Layy;

    invoke-virtual {v1, v5}, Layy;->a(Z)Layx;

    move-result-object v1

    .line 119
    if-eqz v1, :cond_4

    iget-object v2, v1, Layx;->mId:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, v1, Layx;->mValue:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 120
    iget-object v2, v1, Layx;->mId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lqo$a;->j(Ljava/lang/String;)V

    .line 121
    iget-object v2, p0, Lqo;->mEmail:Ljava/lang/String;

    iget-object v3, p0, Lqo;->mPassword:Ljava/lang/String;

    invoke-virtual {v0}, Lqo$a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lqo$a;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v2, v3, v4, v5}, Layy;->a(Layx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lqo$a;->k(Ljava/lang/String;)V

    .line 127
    :goto_0
    invoke-static {}, Lakr;->aD()Ljava/lang/String;

    move-result-object v1

    .line 128
    if-eqz v1, :cond_3

    const-string v2, "{}"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 129
    invoke-virtual {v0, v1}, Lqo$a;->s(Ljava/lang/String;)V

    .line 131
    :cond_3
    return-object v0

    .line 124
    :cond_4
    const-string v1, "1"

    invoke-virtual {v0, v1}, Lqo$a;->l(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public synthetic onJsonResult(Ljava/lang/Object;Lus;)V
    .locals 1

    .prologue
    .line 37
    check-cast p1, Lbka;

    new-instance v0, Lqo$2;

    invoke-direct {v0, p0, p1, p2}, Lqo$2;-><init>(Lqo;Lbka;Lus;)V

    invoke-static {v0}, Lbhp;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onResult(Lus;)V
    .locals 6
    .param p1    # Lus;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 136
    const/4 v0, 0x0

    .line 138
    iget v1, p1, Lus;->mResponseCode:I

    const/16 v2, 0x191

    if-ne v1, v2, :cond_0

    .line 139
    iget v1, p0, Lqo;->mNumRetries:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lqo;->mNumRetries:I

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    .line 140
    const/4 v0, 0x1

    .line 141
    iget-object v1, p0, Lqo;->mHandler:Landroid/os/Handler;

    new-instance v2, Lqo$1;

    invoke-direct {v2, p0}, Lqo$1;-><init>(Lqo;)V

    iget-wide v4, p0, Lqo;->mRetryMillis:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 152
    :cond_0
    if-nez v0, :cond_1

    .line 153
    invoke-super {p0, p1}, Ltx;->onResult(Lus;)V

    .line 155
    :cond_1
    return-void
.end method
