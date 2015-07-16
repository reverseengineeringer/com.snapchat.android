.class public interface abstract Lbnm;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lbnm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lbnm$1;

    invoke-direct {v0}, Lbnm$1;-><init>()V

    sput-object v0, Lbnm;->a:Lbnm;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)[Ljava/net/InetAddress;
.end method
