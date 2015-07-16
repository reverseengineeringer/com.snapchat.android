.class public final Lbwe;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Landroid/content/BroadcastReceiver;

.field private static b:Z

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Lbwf;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 83
    sput-object v1, Lbwe;->a:Landroid/content/BroadcastReceiver;

    .line 93
    const/4 v0, 0x0

    sput-boolean v0, Lbwe;->b:Z

    .line 98
    sput-object v1, Lbwe;->c:Ljava/lang/String;

    .line 103
    sput-object v1, Lbwe;->d:Ljava/lang/String;

    .line 108
    sput-object v1, Lbwe;->e:Lbwf;

    return-void
.end method

.method public static a()Lbwf;
    .locals 1

    .prologue
    .line 217
    sget-object v0, Lbwe;->e:Lbwf;

    return-object v0
.end method
