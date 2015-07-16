.class public final Lbww$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbww;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:Lbww;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 63
    new-instance v0, Lbww;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbww;-><init>(B)V

    sput-object v0, Lbww$a;->a:Lbww;

    return-void
.end method
