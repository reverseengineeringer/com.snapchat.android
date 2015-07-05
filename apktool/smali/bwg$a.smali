.class public final Lbwg$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbwg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:Lbwg;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 60
    new-instance v0, Lbwg;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbwg;-><init>(B)V

    sput-object v0, Lbwg$a;->a:Lbwg;

    return-void
.end method
