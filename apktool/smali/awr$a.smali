.class public final Lawr$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lawr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lawr$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES$58867108:[I

.field public static final enum INSTANCE$415100f3:I

.field private static sInstance:Lawr;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 19
    sput v0, Lawr$a;->INSTANCE$415100f3:I

    .line 18
    new-array v0, v0, [I

    sget v1, Lawr$a;->INSTANCE$415100f3:I

    aput v1, v0, v2

    sput-object v0, Lawr$a;->$VALUES$58867108:[I

    .line 20
    new-instance v0, Lawr;

    invoke-direct {v0, v2}, Lawr;-><init>(B)V

    sput-object v0, Lawr$a;->sInstance:Lawr;

    return-void
.end method

.method public static synthetic a()Lawr;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lawr$a;->sInstance:Lawr;

    return-object v0
.end method
