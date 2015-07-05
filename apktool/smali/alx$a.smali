.class public final Lalx$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lalx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;
    .annotation build Lcgb;
    .end annotation
.end field

.field public final b:Ljava/lang/String;
    .annotation build Lcgb;
    .end annotation
.end field

.field public final c:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;
    .annotation build Lcgb;
    .end annotation
.end field

.field public d:Ljava/lang/String;
    .annotation build Lr;
    .end annotation
.end field

.field public final e:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/notification/AndroidNotificationManager$Type;JLjava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p3    # Lcom/snapchat/android/notification/AndroidNotificationManager$Type;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lr;
        .end annotation
    .end param

    .prologue
    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    iput-object p1, p0, Lalx$a;->a:Ljava/lang/String;

    .line 227
    iput-object p2, p0, Lalx$a;->b:Ljava/lang/String;

    .line 228
    iput-object p3, p0, Lalx$a;->c:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    .line 229
    iput-wide p4, p0, Lalx$a;->e:J

    .line 230
    iput-object p6, p0, Lalx$a;->d:Ljava/lang/String;

    .line 231
    return-void
.end method
