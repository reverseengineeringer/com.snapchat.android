.class public final Laao;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Laao$1;

    invoke-direct {v0}, Laao$1;-><init>()V

    sput-object v0, Laao;->a:Ljava/util/HashMap;

    .line 19
    new-instance v0, Laao$2;

    invoke-direct {v0}, Laao$2;-><init>()V

    sput-object v0, Laao;->b:Ljava/util/HashMap;

    return-void
.end method
