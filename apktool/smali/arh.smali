.class public final Larh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:I

.field public c:Z

.field private final d:Lbgk;

.field private final e:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Lbgk;

    invoke-direct {v0}, Lbgk;-><init>()V

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Larh;-><init>(Lbgk;Landroid/content/SharedPreferences;)V

    .line 29
    return-void
.end method

.method private constructor <init>(Lbgk;Landroid/content/SharedPreferences;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Larh;->a:J

    .line 24
    iput v2, p0, Larh;->b:I

    .line 25
    iput-boolean v2, p0, Larh;->c:Z

    .line 33
    iput-object p1, p0, Larh;->d:Lbgk;

    .line 34
    iput-object p2, p0, Larh;->e:Landroid/content/SharedPreferences;

    .line 35
    return-void
.end method
