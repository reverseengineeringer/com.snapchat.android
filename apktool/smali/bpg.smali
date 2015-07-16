.class public interface abstract Lbpg;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lbpg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lbpg$1;

    invoke-direct {v0}, Lbpg$1;-><init>()V

    sput-object v0, Lbpg;->a:Lbpg;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lbpf;",
            ">;"
        }
    .end annotation
.end method

.method public abstract b(Ljava/lang/Object;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Set",
            "<",
            "Lbpe;",
            ">;>;"
        }
    .end annotation
.end method
