.class public interface abstract Lbqe$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbqe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "f"
.end annotation


# static fields
.field public static final a:Lbqe$f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    new-instance v0, Lbqe$f$1;

    invoke-direct {v0}, Lbqe$f$1;-><init>()V

    sput-object v0, Lbqe$f;->a:Lbqe$f;

    return-void
.end method


# virtual methods
.method public abstract a(Lbqh;)Lbqh;
.end method
