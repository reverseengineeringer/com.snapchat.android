.class public final Lzo;
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
    new-instance v0, Lzo$1;

    invoke-direct {v0}, Lzo$1;-><init>()V

    sput-object v0, Lzo;->a:Ljava/util/HashMap;

    .line 19
    new-instance v0, Lzo$2;

    invoke-direct {v0}, Lzo$2;-><init>()V

    sput-object v0, Lzo;->b:Ljava/util/HashMap;

    return-void
.end method
