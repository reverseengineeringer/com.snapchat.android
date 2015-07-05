.class public interface abstract Lbnt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lbnt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lbnt$1;

    invoke-direct {v0}, Lbnt$1;-><init>()V

    sput-object v0, Lbnt;->a:Lbnt;

    return-void
.end method


# virtual methods
.method public abstract a()Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Z"
        }
    .end annotation
.end method

.method public abstract a(Lbzw;I)Z
.end method

.method public abstract b()Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Z"
        }
    .end annotation
.end method

.method public abstract c()V
.end method
