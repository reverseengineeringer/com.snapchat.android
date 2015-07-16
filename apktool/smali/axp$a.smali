.class public final Laxp$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laxp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Laxp$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES$58867108:[I

.field public static final enum INSTANCE$415100f3:I

.field private static sInstance:Laxp;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 19
    sput v0, Laxp$a;->INSTANCE$415100f3:I

    .line 18
    new-array v0, v0, [I

    sget v1, Laxp$a;->INSTANCE$415100f3:I

    aput v1, v0, v2

    sput-object v0, Laxp$a;->$VALUES$58867108:[I

    .line 20
    new-instance v0, Laxp;

    invoke-direct {v0, v2}, Laxp;-><init>(B)V

    sput-object v0, Laxp$a;->sInstance:Laxp;

    return-void
.end method

.method public static synthetic a()Laxp;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Laxp$a;->sInstance:Laxp;

    return-object v0
.end method
