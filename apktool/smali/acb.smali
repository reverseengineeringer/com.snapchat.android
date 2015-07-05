.class public final Lacb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lacb;


# instance fields
.field public final a:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lacb;

    invoke-direct {v0}, Lacb;-><init>()V

    sput-object v0, Lacb;->b:Lacb;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-direct {p0, v0}, Lacb;-><init>(Landroid/content/SharedPreferences;)V

    .line 27
    return-void
.end method

.method private constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lacb;->a:Landroid/content/SharedPreferences;

    .line 32
    return-void
.end method

.method public static a()Lacb;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lacb;->b:Lacb;

    return-object v0
.end method
