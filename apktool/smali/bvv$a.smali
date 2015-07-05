.class public final Lbvv$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbvv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:Lbvv;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 63
    new-instance v0, Lbvv;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbvv;-><init>(B)V

    sput-object v0, Lbvv$a;->a:Lbvv;

    return-void
.end method
